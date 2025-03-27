class Renderer{constructor(canvas){this._canvas=canvas;this._objects=[];this._clearColor={r:0,g:56/255,b:101/255,a:1};}
async init(){if(!navigator.gpu){throw Error("WebGPU is not supported in this browser.");}
const adapter=await navigator.gpu.requestAdapter();if(!adapter){throw Error("Couldn't request WebGPU adapter.");}
this._device=await adapter.requestDevice();this._context=this._canvas.getContext("webgpu");this._canvasFormat=navigator.gpu.getPreferredCanvasFormat();this._context.configure({device:this._device,format:this._canvasFormat,});this.resizeCanvas();window.addEventListener('resize',this.resizeCanvas.bind(this));}
resizeCanvas(){const devicePixelRatio=window.devicePixelRatio||1;const width=window.innerWidth*devicePixelRatio;const height=window.innerHeight*devicePixelRatio;this._canvas.width=width;this._canvas.height=height;this._canvas.style.width=`${window.innerWidth}px`;this._canvas.style.height=`${window.innerHeight}px`;this._canvas.style.transformOrigin="center";this.render();}
async appendSceneObject(obj){await obj.init();this._objects.push(obj);}
renderToSelectedView(outputView){for(const obj of this._objects){obj?.updateGeometry();}
let encoder=this._device.createCommandEncoder();const pass=encoder.beginRenderPass({colorAttachments:[{view:outputView,clearValue:this._clearColor,loadOp:"clear",storeOp:"store",}]});for(const obj of this._objects){obj?.render(pass);}
pass.end();const computePass=encoder.beginComputePass();for(const obj of this._objects){obj?.compute(computePass);}
computePass.end();const commandBuffer=encoder.finish();this._device.queue.submit([commandBuffer]);}
render(){this.renderToSelectedView(this._context.getCurrentTexture().createView());}}
class StandardTextObject{constructor(inputText,spacing=5,textFont='18px Arial'){this._textFont=textFont;this._lineSpacing=spacing;this._textCanvas=document.createElement('canvas');this._textContext=this._textCanvas.getContext('2d');this.updateTextRegion(inputText);this.updateText(inputText);this._textCanvas.style.position='absolute';this._textCanvas.style.top='10px';this._textCanvas.style.left='10px';this._textCanvas.style.border='1px solid red';document.body.appendChild(this._textCanvas);}
toggleVisibility(){this._textCanvas.hidden=!this._textCanvas.hidden;}
updateTextRegion(newText){this._textContext.font=this._textFont;this._lines=newText.split('\n');this._width=Math.max(...this._lines.map(line=>this._textContext.measureText(line).width));const match=this._textFont.match(/(\d+)px/);if(match){this._fontSize=parseInt(match[1],10);}
else{this._fontSize=18;this._textFont="18px Arial";}
this._height=this._lines.length*(this._fontSize+this._lineSpacing);this._paddingx=5;this._paddingtop=3;this._canvasWidth=Math.ceil(this._width+this._paddingx*2);this._canvasHeight=Math.ceil(this._height+this._paddingtop);this._textCanvas.width=this._canvasWidth;this._textCanvas.height=this._canvasHeight;this._textContext.font=this._textFont;this._textContext.textBaseline='top';}
updateText(newText){this._lines=newText.split('\n');this._textContext.fillStyle='rgba(1, 1, 1, 0.5)';this._textContext.clearRect(0,0,this._canvasWidth,this._canvasHeight);this._textContext.fillRect(0,0,this._canvasWidth,this._canvasHeight);this._textContext.fillStyle='white';this._lines.forEach((line,idx)=>{const x=this._paddingx;const y=this._paddingtop+idx*(this._fontSize+this._lineSpacing);this._textContext.fillText(line,x,y);});}}
class SceneObject{static _objectCnt=0;constructor(device,canvasFormat){if(this.constructor==SceneObject){throw new Error("Abstract classes can't be instantiated.");}
this._device=device;this._canvasFormat=canvasFormat;SceneObject._objectCnt+=1;}
getName(){return this.constructor.name+" "+SceneObject._objectCnt.toString();}
async init(){await this.createGeometry();await this.createShaders();await this.createRenderPipeline();await this.createComputePipeline();}
async createGeometry(){throw new Error("Method 'createGeometry()' must be implemented.");}
updateGeometry(){}
loadShader(filename){return new Promise((resolve,reject)=>{const xhttp=new XMLHttpRequest();xhttp.open("GET",filename);xhttp.setRequestHeader("Cache-Control","no-cache, no-store, max-age=0");xhttp.onload=function(){if(xhttp.readyState===XMLHttpRequest.DONE&&xhttp.status===200){resolve(xhttp.responseText);}
else{reject({status:xhttp.status,statusText:xhttp.statusText});}};xhttp.onerror=function(){reject({status:xhttp.status,statusText:xhttp.statusText});};xhttp.send();});}
async createShaders(){throw new Error("Method 'createShaders()' must be implemented.");}
async createRenderPipeline(){throw new Error("Method 'createRenderPipeline()' must be implemented.");}
render(pass){throw new Error("Method 'render(pass)' must be implemented.");}
async createComputePipeline(){throw new Error("Method 'createComputePipeline()' must be implemented.");}
compute(pass){throw new Error("Method 'compute(pass)' must be implemented.");}};class Node{constructor(id=0,x=0,y=0){this.id=id;this.x=x;this.y=y;this.vx=0;this.vy=0;this.children=[];this.parent=null;this.gen=0;}
addChild(child){child.parent=this;child.gen=this.gen+1;this.children.push(child);}
getID(){return this.id;}
alterX(x){this.x+=x;}
alterY(y){this.y+=y;}
getX(){return this.x;}
getChildren(){return this.children;}
getParent(){return this.parent;}}
class Tree{constructor(root=null){this.root=root;if(root==null){this.num=0;}else{this.num=1;}}
setRoot(node){this.root=node;}
addChild(nodeID,child){const node=this.find(nodeID);node.addChild(child);this.num+=1;}
getAllNodes(){const nodes=[];function traverse(node){if(!node)return;nodes.push(node);node.children.forEach(traverse);}
traverse(this.root);return nodes;}
find(nodeID){let result=null;function search(node){if(!node)return;if(node.id===nodeID){result=node;return;}
node.children.forEach(search);}
search(this.root);return result;}
findIndex(nodeID){let nodes=this.getAllNodes();for(let i=0;i<nodes.length;i++){if(nodes[i].id==nodeID){return i;}}
return null;}};class MassSpringSystemObject extends SceneObject{constructor(device,canvasFormat,tree,boundary=new Float32Array([[0,0]])){super(device,canvasFormat);this._tree=tree;this._nodes=this._tree.getAllNodes();this._numParticles=this._nodes.length;this._numSprings=this._numParticles-1;this._step=0;this._val=16;this._boundary=boundary;}
async createGeometry(){await this.createParticleGeometry();await this.createSpringGeometry();await this.createBoundary();}
async updateBoundary(boundary){this._boundary=boundary;this._device.queue.writeBuffer(this._boundaryBuffer,0,this._boundary);}
async createBoundary(){this._boundaryBuffer=this._device.createBuffer({label:"Boundary Buffer",size:this._boundary.byteLength*2,usage:GPUBufferUsage.STORAGE|GPUBufferUsage.COPY_DST,})
this._device.queue.writeBuffer(this._boundaryBuffer,0,this._boundary);}
async createParticleGeometry(){this._particles=new Float32Array(this._numParticles*this._val);this._particleBuffers=[this._device.createBuffer({label:"Particles Buffer 1 "+this.getName(),size:this._particles.byteLength,usage:GPUBufferUsage.STORAGE|GPUBufferUsage.COPY_DST,}),this._device.createBuffer({label:"Particles Buffer 2 "+this.getName(),size:this._particles.byteLength,usage:GPUBufferUsage.STORAGE|GPUBufferUsage.COPY_DST,}),];this.resetParticles();}
async createSpringGeometry(){this._springs=new Float32Array(this._numSprings*4);this._springBuffer=this._device.createBuffer({label:"Spring Buffer "+this.getName(),size:this._springs.byteLength,usage:GPUBufferUsage.STORAGE|GPUBufferUsage.COPY_DST,});this.resetSprings();}
resetParticles(){for(let i=0;i<this._numParticles;++i){if(i==0){this._particles[this._val*i+0]=0;this._particles[this._val*i+1]=0;}else{this._particles[this._val*i+0]=(Math.random()-0.5)*0.5;this._particles[this._val*i+1]=(Math.random()-0.5)*0.5+0.4;}
this._particles[this._val*i+2]=0;this._particles[this._val*i+3]=0;this._particles[this._val*i+4]=0;this._particles[this._val*i+5]=0;this._particles[this._val*i+6]=0.1-(this._nodes[i].gen*0.025);this._particles[this._val*i+7]=this._nodes[i].id;if(this._nodes[i].getParent()!=null){this._particles[this._val*i+8]=this._nodes[i].getParent().id;}else{this._particles[this._val*i+8]=0;}
this._particles[this._val*i+9]=0;this._particles[this._val*i+10]=0;this._particles[this._val*i+11]=0;this._particles[this._val*i+12]=0;this._particles[this._val*i+13]=0;this._particles[this._val*i+14]=0;this._particles[this._val*i+15]=0;}
this._step=0;this._device.queue.writeBuffer(this._particleBuffers[this._step%2],0,this._particles);}
resetSprings(){let springIndex=0;for(let i=0;i<this._numParticles;++i){for(let j=0;j<this._nodes[i].children.length;j++){this._springs[4*springIndex+0]=i;let childID=this._nodes[i].children[j].id;let index=this._tree.findIndex(childID);this._springs[4*springIndex+1]=index;this._springs[4*springIndex+2]=0.25;this._springs[4*springIndex+3]=0.25;springIndex++;}}
this._device.queue.writeBuffer(this._springBuffer,0,this._springs);}
updateParticleGeometry(){for(let i=0;i<this._numParticles;++i){if(i==0){this._particles[this._val*i+0]=0;this._particles[this._val*i+1]=0;}else{this._particles[this._val*i+0]=(Math.random()-0.5)*0.5;this._particles[this._val*i+1]=(Math.random()-0.5)*0.5+0.4;}
this._particles[this._val*i+2]=0;this._particles[this._val*i+3]=0;this._particles[this._val*i+4]=0;this._particles[this._val*i+5]=0;this._particles[this._val*i+6]=0.1-(this._nodes[i].gen*0.025);this._particles[this._val*i+7]=this._nodes[i].id;if(this._nodes[i].getParent()!=null){this._particles[this._val*i+8]=this._nodes[i].getParent().id;}else{this._particles[this._val*i+8]=0;}
this._particles[this._val*i+9]=0;this._particles[this._val*i+10]=0;this._particles[this._val*i+11]=0;this._particles[this._val*i+12]=0;this._particles[this._val*i+13]=0;this._particles[this._val*i+14]=0;this._particles[this._val*i+15]=0;}}
async createShaders(){let shaderCode=await this.loadShader("/shaders/optimized_massspring.wgsl");this._shaderModule=this._device.createShaderModule({label:"Particles Shader "+this.getName(),code:shaderCode,});this._bindGroupLayout=this._device.createBindGroupLayout({label:"Grid Bind Group Layout "+this.getName(),entries:[{binding:0,visibility:GPUShaderStage.VERTEX|GPUShaderStage.COMPUTE,buffer:{type:"read-only-storage"}},{binding:1,visibility:GPUShaderStage.COMPUTE,buffer:{type:"storage"}},{binding:2,visibility:GPUShaderStage.VERTEX|GPUShaderStage.COMPUTE,buffer:{type:"read-only-storage"}},{binding:3,visibility:GPUShaderStage.COMPUTE,buffer:{type:"read-only-storage"}},]});this._pipelineLayout=this._device.createPipelineLayout({label:"Particles Pipeline Layout",bindGroupLayouts:[this._bindGroupLayout],});}
async createRenderPipeline(){await this.createParticlePipeline();await this.createSpringPipeline();}
async createParticlePipeline(){this._particlePipeline=this._device.createRenderPipeline({label:"Particles Render Pipeline "+this.getName(),layout:this._pipelineLayout,vertex:{module:this._shaderModule,entryPoint:"vertexMain",},fragment:{module:this._shaderModule,entryPoint:"fragmentMain",targets:[{format:this._canvasFormat}]},primitives:{typology:'line-strip'}});this._bindGroups=[this._device.createBindGroup({layout:this._particlePipeline.getBindGroupLayout(0),entries:[{binding:0,resource:{buffer:this._particleBuffers[0]}},{binding:1,resource:{buffer:this._particleBuffers[1]}},{binding:2,resource:{buffer:this._springBuffer}},{binding:3,resource:{buffer:this._boundaryBuffer}}],}),this._device.createBindGroup({layout:this._particlePipeline.getBindGroupLayout(0),entries:[{binding:0,resource:{buffer:this._particleBuffers[1]}},{binding:1,resource:{buffer:this._particleBuffers[0]}},{binding:2,resource:{buffer:this._springBuffer}},{binding:3,resource:{buffer:this._boundaryBuffer}}],})];}
async createSpringPipeline(){this._springPipeline=this._device.createRenderPipeline({label:"Spring Render Pipeline "+this.getName(),layout:this._pipelineLayout,vertex:{module:this._shaderModule,entryPoint:"vertexSpringMain",},fragment:{module:this._shaderModule,entryPoint:"fragmentSpringMain",targets:[{format:this._canvasFormat}]},primitives:{typology:'line-list'}});}
render(pass){pass.setPipeline(this._springPipeline);pass.setBindGroup(0,this._bindGroups[this._step%2]);pass.draw(12,this._numSprings);pass.setPipeline(this._particlePipeline);pass.setBindGroup(0,this._bindGroups[this._step%2]);pass.draw(128,this._numParticles);}
async createComputePipeline(){this._computePipeline=this._device.createComputePipeline({label:"Particles Compute Pipeline "+this.getName(),layout:this._pipelineLayout,compute:{module:this._shaderModule,entryPoint:"computeMain",}});this._updatePipeline=this._device.createComputePipeline({label:"Particles Update Pipeline "+this.getName(),layout:this._pipelineLayout,compute:{module:this._shaderModule,entryPoint:"updateMain",}});}
compute(pass){pass.setPipeline(this._computePipeline);pass.setBindGroup(0,this._bindGroups[this._step%2]);pass.dispatchWorkgroups(Math.ceil(this._numSprings/256));pass.setPipeline(this._updatePipeline);pass.setBindGroup(0,this._bindGroups[this._step%2]);pass.dispatchWorkgroups(Math.ceil(this._numParticles/256));++this._step}};class PolygonIO{constructor(){}
static readBinary(filename){return new Promise((resolve,reject)=>{const xhttp=new XMLHttpRequest();xhttp.open("GET",filename);xhttp.setRequestHeader("Cache-Control","no-cache, no-store, max-age=0");xhttp.responseType='arraybuffer';xhttp.onload=function(){if(xhttp.readyState===XMLHttpRequest.DONE&&xhttp.status===200){resolve(xhttp.response);}
else{reject(new Error('Error loading Polygon file: '+xhttp.status));}}
xhttp.onerror=function(){reject(new Error('Network error loading Polygon file'));}
xhttp.send();});}
static async read(filename){let binarydata=await PolygonIO.readBinary(filename);let text=new TextDecoder().decode(binarydata);const polygon=[];const lines=text.split('\n');const headers=lines[0].trim().split(',');for(let i=1;i<lines.length;++i){const line=lines[i].trim();if(line!=='')polygon.push(line.split(',').map(parseFloat));}
return polygon;}
static async write(polygon,filename){var data='';if(polygon[0].length==2)data='# x, y\n';else data='# x, y, z\n';for(let i=0;i<polygon.length;++i){data+=polygon[i].join(",")+'\n';}
const blob=new Blob([data],{type:'text/plain'});const a=document.createElement('a');a.href=URL.createObjectURL(blob);a.download='download.polygon';a.click();URL.revokeObjectURL(a.href);}}
class PGA2D{static geometricProduct(a,b){return[a[0]*b[0]-a[1]*b[1],a[0]*b[1]+a[1]*b[0],a[0]*b[2]+a[1]*b[3]+a[2]*b[0]-a[3]*b[1],a[0]*b[3]-a[1]*b[2]+a[2]*b[1]+a[3]*b[0]];}
static reverse(a){return[a[0],-a[1],-a[2],-a[3]];}
static applyMotor(p,m){return PGA2D.geometricProduct(m,PGA2D.geometricProduct(p,PGA2D.reverse(m)));}
static motorNorm(m){return Math.sqrt(m[0]*m[0]+m[1]*m[1]+m[2]*m[2]+m[3]*m[3]);}
static createTranslator(dx,dy){return[1,0,-dx/2,-dy/2]}
static createRotor(angle,cx=0,cy=0){let p=PGA2D.createPoint(cx,cy);return[Math.cos(angle/2),Math.sin(angle/2)*p[1],Math.sin(angle/2)*p[2],Math.sin(angle/2)*p[3]];}
static createPoint(x,y){return[0,1,y,-x];}
static extractPoint(p){return[-p[3]/p[1],p[2]/p[1]];}
static normaliozeMotor(m){let mnorm=PGA2D.motorNorm(m);if(mnorm==0.0){return[1,0,0,0];}
return[m[0]/mnorm,m[1]/mnorm,m[2]/mnorm,m[3]/mnorm];}
static applyMotorToPoint(p,m){let new_p=PGA2D.applyMotor(PGA2D.createPoint(p[0],p[1]),m);return PGA2D.extractPoint(new_p);};static isInside(v0,v1,p){const edge=PGA2D.createPoint(v1[0]-v0[0],v1[1]-v0[1]);const point=PGA2D.createPoint(p[0]-v0[0],p[1]-v0[1]);return(v1[0]-v0[0])*(p[1]-v0[1])-(v1[1]-v0[1])*(p[0]-v0[0])>0;}}
class Polygon{constructor(filename){this._filename=filename;}
centerOfMass(){let C=Array(this._dim).fill(0);for(let i=0;i<this._numV-1;++i){for(let j=0;j<this._dim;++j){C[j]+=this._polygon[i][j];}}
for(let i=0;i<this._dim;++i){C[i]/=this._numV;}
return C;}
surfaceArea(){const l=(a,b)=>Math.sqrt(Math.pow(b[0]-a[0],2)+Math.pow(b[1]-a[1],2)+Math.pow(b[2]-a[2],2));const area=(e0,e1,e2,s)=>Math.sqrt(s*(s-e0)*(s-e1)*(s-e2));let A=0;var v0=[...this.centerOfMass()];if(v0.length==2)v0.push(0);for(let i=0;i<this._polygon.length-1;++i){var v1=[...this._polygon[i]];if(v1.length==2)v1.push(0);var v2=[...this._polygon[i+1]];if(v2.length==2)v2.push(0);const e01=l(v0,v1);const e12=l(v1,v2);const e20=l(v2,v0);const s=(e01+e12+e20)/2;A+=area(e01,e12,e20,s);}
return A;}
normalizePolygon(){this._center=this.centerOfMass();for(let i=0;i<this._polygon.length;++i){for(let j=0;j<this._dim;++j){this._polygon[i][j]-=this._center[j];}}
this._area=this.surfaceArea();const targetArea=1;this._scaleFactor=Math.sqrt(1/this._area*targetArea);for(let i=0;i<this._polygon.length;++i){for(let j=0;j<this._dim;++j){this._polygon[i][j]*=this._scaleFactor;}}
if(Math.abs(this.surfaceArea()-targetArea)>0.0001){console.log("Something is wrong! The surface area is not as expected!");}}
refinePolygon(){var polygon=[];for(let i=0;i<this._polygon.length-1;++i){var v1=[...this._polygon[i]];var v2=[...this._polygon[i+1]];polygon.push(v1);let mid=Array(this._dim).fill(0);for(let j=0;j<this._dim;++j){mid[j]=(v1[j]+v2[j])/2;}
polygon.push(mid);}
polygon.push(this._polygon[0]);this._polygon=polygon;this._numV=this._polygon.length;this.normalizePolygon();}
reversePolygon(){var polygon=[];for(let i=this._polygon.length-1;i>=0;--i){polygon.push(this._polygon[i]);}
this._polygon=polygon;this._numV=this._polygon.length;this.normalizePolygon();}
isInside(v0,v1,p){if(this._polygon[0].length!=2)throw new Error("this formula works only for 2D Polygons.");return PGA2D.isInside(v0,v1,p);}
async init(){this._polygon=await PolygonIO.read(this._filename);this._numV=this._polygon.length;this._dim=this._polygon[0].length;this.normalizePolygon();}}
class PolygonObject extends SceneObject{constructor(device,canvasFormat,filename){super(device,canvasFormat);this._polygon=new Polygon(filename);}
async changePolygon(filename){this._polygon=new Polygon(filename);await this.init();}
async createGeometry(){await this._polygon.init();this._numV=this._polygon._numV;this._dim=this._polygon._dim;this._vertices=this._polygon._polygon.flat();this._vertexBuffer=this._device.createBuffer({label:"Vertices Normals and More "+this.getName(),size:this._vertices.length*Float32Array.BYTES_PER_ELEMENT,usage:GPUBufferUsage.VERTEX|GPUBufferUsage.STORAGE|GPUBufferUsage.COPY_DST,mappedAtCreation:true});new Float32Array(this._vertexBuffer.getMappedRange()).set(this._vertices);this._vertexBuffer.unmap();this._vertexBufferLayout={arrayStride:this._dim*Float32Array.BYTES_PER_ELEMENT,attributes:[{format:"float32x"+this._dim.toString(),offset:0,shaderLocation:0,},]};this._mouseBuffer=this._device.createBuffer({label:"Mouse",size:8,usage:GPUBufferUsage.STORAGE|GPUBufferUsage.COPY_DST,});this._windingNumberBuffer=this._device.createBuffer({label:"Winding Number",size:4,usage:GPUBufferUsage.STORAGE|GPUBufferUsage.COPY_DST|GPUBufferUsage.COPY_SRC,});this._stageBuffer=this._device.createBuffer({size:4,usage:GPUBufferUsage.MAP_READ|GPUBufferUsage.COPY_DST,});}
async createShaders(){let shaderCode=await this.loadShader("/shaders/optimized_polygon.wgsl");this._shaderModule=this._device.createShaderModule({label:"Shader "+this.getName(),code:shaderCode,});this._bindGroupLayout=this._device.createBindGroupLayout({label:"Grid Bind Group Layout "+this.getName(),entries:[{binding:0,visibility:GPUShaderStage.COMPUTE,buffer:{type:"read-only-storage"}},{binding:1,visibility:GPUShaderStage.COMPUTE,buffer:{type:"read-only-storage"}},{binding:2,visibility:GPUShaderStage.COMPUTE,buffer:{type:"storage"}}]});this._pipelineLayout=this._device.createPipelineLayout({label:"Polygon Pipeline Layout",bindGroupLayouts:[this._bindGroupLayout],});}
async createRenderPipeline(){this._renderPipeline=this._device.createRenderPipeline({label:"Render Pipeline "+this.getName(),layout:this._pipelineLayout,vertex:{module:this._shaderModule,entryPoint:"vertexMain",buffers:[this._vertexBufferLayout]},fragment:{module:this._shaderModule,entryPoint:"fragmentMain",targets:[{format:this._canvasFormat}]},primitive:{topology:'line-strip'}});this._bindGroup=this._device.createBindGroup({layout:this._renderPipeline.getBindGroupLayout(0),entries:[{binding:0,resource:{buffer:this._mouseBuffer}},{binding:1,resource:{buffer:this._vertexBuffer}},{binding:2,resource:{buffer:this._windingNumberBuffer}}],});}
render(pass){pass.setPipeline(this._renderPipeline);pass.setVertexBuffer(0,this._vertexBuffer);pass.setBindGroup(0,this._bindGroup);pass.draw(this._numV);this._device.queue.writeBuffer(this._windingNumberBuffer,0,new Int32Array(1));}
async createComputePipeline(){this._computePipeline=this._device.createComputePipeline({label:"Compute Pipeline "+this.getName(),layout:this._pipelineLayout,compute:{module:this._shaderModule,entryPoint:"computeMain",},});}
async checkWindingNumber(){if(this._stageBuffer.mapState!="unmapped")return this.inside;const encoder=this._device.createCommandEncoder();encoder.copyBufferToBuffer(this._windingNumberBuffer,0,this._stageBuffer,0,4);this._device.queue.submit([encoder.finish()]);await this._stageBuffer.mapAsync(GPUMapMode.READ);const windingNumber=new Int32Array(this._stageBuffer.getMappedRange())[0];this._inside=windingNumber!=0;this._stageBuffer.unmap();return this._inside;}
updateMouseBuffer(mouse){this._device.queue.writeBuffer(this._mouseBuffer,0,mouse);}
compute(pass){pass.setPipeline(this._computePipeline);pass.setBindGroup(0,this._bindGroup);pass.dispatchWorkgroups(Math.ceil(this._numV/256));}};;async function init(){var tree=new Tree(new Node(0));for(var i=0;i<3;i++){tree.addChild(0,new Node(tree.num))}
var children=tree.root.getChildren();var newNode;for(var j=0;j<3;j++){for(var i=0;i<3;i++){newNode=new Node(tree.num);tree.addChild(children[j].getID(),newNode);}}
console.log(tree.getAllNodes())
const canvasTag=document.createElement('canvas');canvasTag.id="renderCanvas";document.body.appendChild(canvasTag);const renderer=new Renderer(canvasTag);await renderer.init();const particles=new MassSpringSystemObject(renderer._device,renderer._canvasFormat,tree);await renderer.appendSceneObject(particles);let fps='??';var fpsText=new StandardTextObject('fps: '+fps);var frameCnt=0;var tgtFPS=60;var secPerFrame=1./tgtFPS;var frameInterval=secPerFrame*1000;var lastCalled;let renderFrame=()=>{let elapsed=Date.now()-lastCalled;if(elapsed>frameInterval){++frameCnt;lastCalled=Date.now()-(elapsed%frameInterval);renderer.render();}
requestAnimationFrame(renderFrame);};lastCalled=Date.now();renderFrame();setInterval(()=>{fpsText.updateText('fps: '+frameCnt);frameCnt=0;},1000);return renderer;}
init().then(ret=>{console.log(ret);}).catch(error=>{const pTag=document.createElement('p');pTag.innerHTML=navigator.userAgent+"</br>"+error.message;document.body.appendChild(pTag);document.getElementById("renderCanvas").remove();});