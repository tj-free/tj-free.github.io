/*!
 * Copyright (c) 2025 SingChun LEE @ Bucknell University. CC BY-NC 4.0.
 * 
 * This code is provided mainly for educational purposes at Bucknell University.
 *
 * This code is licensed under the Creative Commons Attribution-NonCommerical 4.0
 * International License. To view a copy of the license, visit 
 *   https://creativecommons.org/licenses/by-nc/4.0/
 * or send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.
 *
 * You are free to:
 *  - Share: copy and redistribute the material in any medium or format.
 *  - Adapt: remix, transform, and build upon the material.
 *
 * Under the following terms:
 *  - Attribution: You must give appropriate credit, provide a link to the license,
 *                 and indicate if changes where made.
 *  - NonCommerical: You may not use the material for commerical purposes.
 *  - No additional restrictions: You may not apply legal terms or technological 
 *                                measures that legally restrict others from doing
 *                                anything the license permits.
 */

import SceneObject from "/lib/DSViz/SceneObject.js"
import Polygon from "/lib/DS/Polygon.js"

export default class PolygonObject extends SceneObject {
  constructor(device, canvasFormat, filename) {
    super(device, canvasFormat);
    this._polygon = new Polygon(filename);
  }
  
  async createGeometry() {
    // Read vertices from polygon files
    await this._polygon.init();
    this._numV = this._polygon._numV;
    this._dim = this._polygon._dim;
    this._vertices = this._polygon._polygon.flat();
    // Create vertex buffer to store the vertices in GPU
    this._vertexBuffer = this._device.createBuffer({
      label: "Vertices Normals and More " + this.getName(),
      size: this._vertices.length * Float32Array.BYTES_PER_ELEMENT,
      usage: GPUBufferUsage.VERTEX | GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST,
      mappedAtCreation: true
    });
    // Copy from CPU to GPU
    new Float32Array(this._vertexBuffer.getMappedRange()).set(this._vertices);
    this._vertexBuffer.unmap();
    // Defne vertex buffer layout - how the GPU should read the buffer
    this._vertexBufferLayout = {
      arrayStride: this._dim * Float32Array.BYTES_PER_ELEMENT,
      attributes: [
      { // vertices
        format: "float32x"+this._dim.toString(), // 32 bits, each has two/three coordiantes
        offset: 0,
        shaderLocation: 0, // position in the vertex shader
      },
      ]
    };

    // create mouse buffer
    this._mouseBuffer = this._device.createBuffer({
      label: "Mouse",
      size: 8, // 32 bits, 4 bytes in a float
      usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST,
    });
  }
  
  async createShaders() {
    let shaderCode = await this.loadShader("/shaders/polygon.wgsl");
    this._shaderModule = this._device.createShaderModule({
      label: "Shader " + this.getName(),
      code: shaderCode,
    }); 

    // bind group layouts
    this._bindGroupLayout = this._device.createBindGroupLayout({
      label: "Grid Bind Group Layout " + this.getName(),
      entries: [{
        binding: 0,
        visibility: GPUShaderStage.COMPUTE,
        buffer: { type: "read-only-storage"}
      },{
        binding: 1,
        visibility: GPUShaderStage.COMPUTE,
        buffer: { type: "read-only-storage"}
      }]
    });

    // create the pipeline layout using the bind group layout
    this._pipelineLayout = this._device.createPipelineLayout({
      label: "Polygon Pipeline Layout",
      bindGroupLayouts: [ this._bindGroupLayout ],
    });
  }
  
  async createRenderPipeline() {
    this._renderPipeline = this._device.createRenderPipeline({
      label: "Render Pipeline " + this.getName(),
      layout: this._pipelineLayout,
      vertex: {
        module: this._shaderModule,     // the shader code
        entryPoint: "vertexMain",          // the shader function
        buffers: [this._vertexBufferLayout] // the binded buffer layout
      },
      fragment: {
        module: this._shaderModule,     // the shader code
        entryPoint: "fragmentMain",        // the shader function
        targets: [{
          format: this._canvasFormat        // the target canvas format
        }]
      },
      primitive: {
        topology: 'line-strip'
      }
    }); 

    this._bindGroup =
      this._device.createBindGroup({
        layout: this._renderPipeline.getBindGroupLayout(0),
        entries: [
          {
            binding: 0,
            resource: { buffer: this._mouseBuffer }
          },
          {
            binding: 1,
            resource: { buffer: this._vertexBuffer }
          }
        ],
      });
  }
  
  render(pass) {
    // add to render pass to draw the plane
    pass.setPipeline(this._renderPipeline);
    pass.setVertexBuffer(0, this._vertexBuffer); // bind the vertex buffer
    pass.setBindGroup(0, this._bindGroup);
    pass.draw(this._numV);         // draw all vertices
  }
  
  async createComputePipeline() {
    this._computePipeline = this._device.createComputePipeline({
      label: "Compute Pipeline " + this.getName(),
      layout: "auto",
      compute: {
        module: this._shaderModule,
        entryPoint: "computeMain",
      },
    });
  }
  
  updateMouseBuffer(mouse) {
    this._device.queue.writeBuffer(this._mouseBuffer, 0, mouse);
  }

  compute(pass) {
    pass.setPipeline(this._computePipeline);
    pass.setBindGroup(0, this._bindGroup);
    pass.dispatchWorkgroups(Math.ceil(this._numV / 256));
  }
}
