class Renderer{constructor(canvas){this._canvas=canvas;this._objects=[];this._clearColor={r:0,g:0.35,b:0,a:1};}
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
class FilteredRenderer extends Renderer{constructor(canvas){super(canvas);this._filters=[];}
async init(){if(!navigator.gpu){throw Error("WebGPU is not supported in this browser.");}
const adapter=await navigator.gpu.requestAdapter();if(!adapter){throw Error("Couldn't request WebGPU adapter.");}
this._device=await adapter.requestDevice();this._context=this._canvas.getContext("webgpu");this._canvasFormat="rgba8unorm";this._context.configure({device:this._device,format:this._canvasFormat,});this._shaderModule=this._device.createShaderModule({label:"Image Filter Renderer Shader",code:`
        @vertex
        fn vertexMain(@builtin(vertex_index) vIdx: u32) -> @builtin(position) vec4f {
          var pos = array<vec2f, 6>(
            vec2f(-1, -1), vec2f(1, -1), vec2f(-1, 1),
            vec2f(-1, 1), vec2f(1, -1), vec2f(1, 1)
          );
          return vec4f(pos[vIdx], 0, 1);
        }
        
        @group(0) @binding(0) var inTexture: texture_2d<f32>;
        @group(0) @binding(1) var inSampler: sampler;
        
        @fragment
        fn fragmentMain(@builtin(position) fragCoord: vec4f) -> @location(0) vec4f {
          let uv = fragCoord.xy / vec2f(textureDimensions(inTexture, 0));
          return textureSample(inTexture, inSampler, uv);
        }
        `});this._pipeline=this._device.createRenderPipeline({label:"Image Filter Renderer Pipeline",layout:"auto",vertex:{module:this._shaderModule,entryPoint:"vertexMain",},fragment:{module:this._shaderModule,entryPoint:"fragmentMain",targets:[{format:this._canvasFormat}]}});this._sampler=this._device.createSampler({label:"Image Filter Renderer Sampler",magFilter:"linear",minFilter:"linear"});this.resizeCanvas();window.addEventListener('resize',this.resizeCanvas.bind(this));}
resizeCanvas(){const devicePixelRatio=window.devicePixelRatio||1;const width=window.innerWidth*devicePixelRatio;const height=window.innerHeight*devicePixelRatio;let imgSize={width:width,height:height};this._textures=[];this._textures.push(this._device.createTexture({size:imgSize,format:this._canvasFormat,usage:GPUTextureUsage.RENDER_ATTACHMENT|GPUTextureUsage.TEXTURE_BINDING|GPUTextureUsage.STORAGE_BINDING,}),this._device.createTexture({size:imgSize,format:this._canvasFormat,usage:GPUTextureUsage.RENDER_ATTACHMENT|GPUTextureUsage.TEXTURE_BINDING|GPUTextureUsage.STORAGE_BINDING,}),);for(const obj of this._filters){obj._imgWidth=this._textures[0].width;obj._imgHeight=this._textures[0].height;obj.updateGeometry();}
super.resizeCanvas();}
async appendFilterObject(obj){await obj.init();obj._imgWidth=this._textures[0].width;obj._imgHeight=this._textures[0].height;obj.updateGeometry();this._filters.push(obj);}
render(){super.renderToSelectedView(this._textures[0].createView());for(let i=0;i<this._filters.length;++i){let encoder=this._device.createCommandEncoder();const computePass=encoder.beginComputePass();this._filters[i].createBindGroup(this._textures[i%2],this._textures[(i+1)%2]);this._filters[i].compute(computePass);computePass.end();const commandBuffer=encoder.finish();this._device.queue.submit([commandBuffer]);}
let encoder=this._device.createCommandEncoder();const pass=encoder.beginRenderPass({colorAttachments:[{view:this._context.getCurrentTexture().createView(),clearValue:this._clearColor,loadOp:"clear",storeOp:"store",}]});const bindGroup=this._device.createBindGroup({label:"Image Filter Renderer Bind Group",layout:this._pipeline.getBindGroupLayout(0),entries:[{binding:0,resource:this._textures[this._filters.length%2].createView()},{binding:1,resource:this._sampler}],});pass.setPipeline(this._pipeline);pass.setBindGroup(0,bindGroup);pass.draw(6);pass.end();const commandBuffer=encoder.finish();this._device.queue.submit([commandBuffer]);}}
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
compute(pass){throw new Error("Method 'compute(pass)' must be implemented.");}}
class Standard2DVertexColorObject extends SceneObject{constructor(device,canvasFormat,vertices){super(device,canvasFormat);this._vertices=vertices;}
async createGeometry(){this._vertexBuffer=this._device.createBuffer({label:"Vertices "+this.getName(),size:this._vertices.byteLength,usage:GPUBufferUsage.VERTEX|GPUBufferUsage.COPY_DST,});this._device.queue.writeBuffer(this._vertexBuffer,0,this._vertices);this._vertexBufferLayout={arrayStride:6*Float32Array.BYTES_PER_ELEMENT,attributes:[{shaderLocation:0,format:"float32x2",offset:0,},{shaderLocation:1,format:"float32x4",offset:2*Float32Array.BYTES_PER_ELEMENT,}],};}
async createShaders(){let shaderCode=await this.loadShader("/shaders/colors.wgsl");this._shaderModule=this._device.createShaderModule({label:" Shader "+this.getName(),code:shaderCode,});}
async createRenderPipeline(){this._renderPipeline=this._device.createRenderPipeline({label:"Render Pipeline "+this.getName(),layout:"auto",vertex:{module:this._shaderModule,entryPoint:"vertexMain",buffers:[this._vertexBufferLayout]},fragment:{module:this._shaderModule,entryPoint:"fragmentMain",targets:[{format:this._canvasFormat}]}});}
render(pass){pass.setPipeline(this._renderPipeline);pass.setVertexBuffer(0,this._vertexBuffer);pass.draw(this._vertices.length/6);}
async createComputePipeline(){}
compute(pass){}}
async function init(){const canvasTag=document.createElement('canvas');canvasTag.id="renderCanvas";document.body.appendChild(canvasTag);const renderer=new FilteredRenderer(canvasTag);await renderer.init();const SHEEPTOP=0.4;const SHEEPRIGHT=0.6;const HEADWIDTH=0.3;const HEADRAISE=SHEEPTOP/2;const THIN=0.05;const THICK=0.07;const FOOT=-0.6
const FIR=0.03;const SEC=0.10;const THI=SHEEPRIGHT/2+FIR;const FOU=SHEEPRIGHT/2+SEC;var vertices=new Float32Array([FIR,0,1,1,1,1,FIR+THIN,0,1,1,1,1,FIR,FOOT,0,0,0,1,FIR+THIN,FOOT,0,0,0,0,FIR+THIN,0,1,1,1,1,FIR,FOOT,0,0,0,1,SEC,0,1,1,1,1,SEC+THICK,0,1,1,1,1,SEC,FOOT,0,0,0,1,SEC+THICK,FOOT,0,0,0,0,SEC+THICK,0,1,1,1,1,SEC,FOOT,0,0,0,1,THI,0,1,1,1,1,THI+THIN,0,1,1,1,1,THI,FOOT,0,0,0,1,THI+THIN,FOOT,0,0,0,0,THI+THIN,0,1,1,1,1,THI,FOOT,0,0,0,1,FOU,0,1,1,1,1,FOU+THICK,0,1,1,1,1,FOU,FOOT,0,0,0,1,FOU+THICK,FOOT,0,0,0,0,FOU+THICK,0,1,1,1,1,FOU,FOOT,0,0,0,1,0,SHEEPTOP/2,1,1,1,1,SHEEPRIGHT/2,0,1,1,1,1,0,-SHEEPTOP/2,0.75,0.75,0.75,1,SHEEPRIGHT/2,SHEEPTOP,1,1,1,1,SHEEPRIGHT/2,0,1,1,1,1,0,SHEEPTOP/2,1,1,1,1,SHEEPRIGHT/2,SHEEPTOP,1,1,1,1,SHEEPRIGHT/2,0,1,1,1,1,SHEEPRIGHT,SHEEPTOP/2,1,1,1,1,SHEEPRIGHT,-SHEEPTOP/2,0.75,0.75,0.75,1,SHEEPRIGHT/2,0,1,1,1,1,SHEEPRIGHT,SHEEPTOP/2,1,1,1,1,SHEEPRIGHT,-SHEEPTOP/2,0.75,0.75,0.75,1,SHEEPRIGHT/2,0,1,1,1,1,SHEEPRIGHT/2,-SHEEPTOP,0.25,0.25,0.25,1,0,-SHEEPTOP/2,0.75,0.75,0.75,0.75,SHEEPRIGHT/2,0,1,1,1,1,SHEEPRIGHT/2,-SHEEPTOP,0.25,0.25,0.25,1,0,HEADWIDTH/2+HEADRAISE,1,1,1,1,-HEADWIDTH/2,0,1,1,1,1,0,-SHEEPTOP/2,0.75,0.75,0.75,1,-HEADWIDTH/2,HEADWIDTH+HEADRAISE,1,1,1,1,-HEADWIDTH/2,0,1,1,1,1,0,HEADWIDTH/2+HEADRAISE,1,1,1,1,-HEADWIDTH/2,HEADWIDTH+HEADRAISE,1,1,1,1,-HEADWIDTH/2,0,1,1,1,1,-HEADWIDTH,HEADWIDTH/2+HEADRAISE,1,1,1,1,-HEADWIDTH,-HEADWIDTH/2+HEADRAISE,1,1,1,1,-HEADWIDTH/2,0,1,1,1,1,-HEADWIDTH,HEADWIDTH/2+HEADRAISE,1,1,1,1,-HEADWIDTH,-HEADWIDTH/2+HEADRAISE,1,1,1,1,-HEADWIDTH/2,0,1,1,1,1,-HEADWIDTH/2,-HEADWIDTH+HEADRAISE,1,1,1,1,0,-SHEEPTOP/2,0.75,0.75,0.75,1,-HEADWIDTH/2,0,1,1,1,1,-HEADWIDTH/2,-HEADWIDTH+HEADRAISE,1,1,1,1,-HEADWIDTH/2,HEADWIDTH+HEADRAISE,1,0,0,1,0,0.9,1,1,0,1,0,HEADWIDTH/2+HEADRAISE,0,0,1,1,-3*HEADWIDTH/4,HEADRAISE+HEADWIDTH/2,0.25,0.25,0.25,1,-1*HEADWIDTH/4,HEADRAISE+HEADWIDTH/2,0.25,0.25,0.25,1,-1*HEADWIDTH/4,HEADRAISE-HEADWIDTH/2,0.25,0.25,0.25,1,-3*HEADWIDTH/4,HEADRAISE-HEADWIDTH/2,0.25,0.25,0.25,1,-3*HEADWIDTH/4,HEADRAISE+HEADWIDTH/2,0.25,0.25,0.25,1,-1*HEADWIDTH/4,HEADRAISE-HEADWIDTH/2,0.25,0.25,0.25,1,]);await renderer.appendSceneObject(new Standard2DVertexColorObject(renderer._device,renderer._canvasFormat,vertices));renderer.render();return renderer;}
init().then(ret=>{console.log(ret);}).catch(error=>{const pTag=document.createElement('p');pTag.innerHTML=navigator.userAgent+"</br>"+error.message;document.body.appendChild(pTag);document.getElementById("renderCanvas").remove();});