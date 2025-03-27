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

import SceneObject from '/lib/DSViz/SceneObject.js'
import Tree from '/lib/Tree/Tree.js';
import Node from '/lib/Tree/Node.js'


export default class MassSpringSystemObject extends SceneObject {
  constructor(device, canvasFormat, tree, boundary = new Float32Array([[0,0]])) {
    super(device, canvasFormat);
    this._tree = tree;
    this._nodes = this._tree.getAllNodes();
    this._numParticles = this._nodes.length;
    this._numSprings = this._numParticles - 1;
    this._step = 0;
    this._val = 16;
    this._boundary = boundary;
  }
  
  async createGeometry() { 
    await this.createParticleGeometry();
    await this.createSpringGeometry();
    await this.createBoundary();
  }

  async updateBoundary(boundary) {
    this._boundary = boundary;
    this._device.queue.writeBuffer(this._boundaryBuffer, 0, this._boundary);
  }

  async createBoundary() {
    this._boundaryBuffer = 
      this._device.createBuffer({
        label: "Boundary Buffer",
        size: this._boundary.byteLength*2,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST,
      })
    this._device.queue.writeBuffer(this._boundaryBuffer, 0, this._boundary);
  }
  
  async createParticleGeometry() {
    // Create particles
    this._particles = new Float32Array(this._numParticles * this._val); // [x, y, vx, vy, dx, dy, gen, id, parent]
    // Create vertex+storage buffer to store the particles in GPU
    this._particleBuffers = [
      this._device.createBuffer({
        label: "Particles Buffer 1 " + this.getName(),
        size: this._particles.byteLength,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST,
      }),
      this._device.createBuffer({
        label: "Particles Buffer 2 " + this.getName(),
        size: this._particles.byteLength,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST,
      }),
    ];
    
    this.resetParticles();
  }
    
  async createSpringGeometry() {
    // TODO 1: create the strings memory in both CPU and GPU
    // Use _numSprings to determine the size
    // Create a storage buffer in GPU for it
    // Name the CPU array as `_springs`
    // Create springs
    this._springs = new Float32Array(this._numSprings * 4);
    this._springBuffer = this._device.createBuffer({
      label: "Spring Buffer " + this.getName(),
      size: this._springs.byteLength,
      usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST,
    });
    
    
    // call the resetSprings to initialize the springs and copy to GPU
    this.resetSprings();
  }
    
  resetParticles() {
    for (let i = 0; i < this._numParticles; ++i) {
      if (i == 0) {
        this._particles[this._val * i + 0] = 0;
        this._particles[this._val * i + 1] = 0;
      } else {
        this._particles[this._val * i + 0] = (Math.random() - 0.5) * 0.5;
        this._particles[this._val * i + 1] = (Math.random() - 0.5) * 0.5 + 0.4;
      }

      this._particles[this._val * i + 2] = 0;
      this._particles[this._val * i + 3] = 0;

      this._particles[this._val * i + 4] = 0;
      this._particles[this._val * i + 5] = 0;

      this._particles[this._val * i + 6] = 0.1 - (this._nodes[i].gen * 0.025);
      this._particles[this._val * i + 7] = this._nodes[i].id;

      if (this._nodes[i].getParent() != null) {
        this._particles[this._val * i + 8] = this._nodes[i].getParent().id;
      } else {
        this._particles[this._val * i + 8] = 0;
      }
      this._particles[this._val * i + 9] = 0;
      this._particles[this._val * i + 10] = 0;
      this._particles[this._val * i + 11] = 0;
      this._particles[this._val * i + 12] = 0;
      this._particles[this._val * i + 13] = 0;
      this._particles[this._val * i + 14] = 0;
      this._particles[this._val * i + 15] = 0;
      
    }
    // Copy from CPU to GPU
    this._step = 0;
    this._device.queue.writeBuffer(this._particleBuffers[this._step % 2], 0, this._particles);
  }
  
  resetSprings() {
    let springIndex = 0; // Track where we write in _springs

    for (let i = 0; i < this._numParticles; ++i) {
        for (let j = 0; j < this._nodes[i].children.length; j++) {
            // ptA (Parent)
            this._springs[4 * springIndex + 0] = i; 

            // ptB (Child)
            let childID = this._nodes[i].children[j].id; 
            let index = this._tree.findIndex(childID);
            this._springs[4 * springIndex + 1] = index;

            // Rest length
            this._springs[4 * springIndex + 2] = 0.25; 
            // Stiffness
            this._springs[4 * springIndex + 3] = 0.25; 

            springIndex++; // Move to next available slot in _springs
        }
    }

    // Copy from CPU to GPU
    this._device.queue.writeBuffer(this._springBuffer, 0, this._springs);
  }
  
  updateParticleGeometry() { 
    for (let i = 0; i < this._numParticles; ++i) {
      if (i == 0) {
        this._particles[this._val * i + 0] = 0;
        this._particles[this._val * i + 1] = 0;
      } else {
        this._particles[this._val * i + 0] = (Math.random() - 0.5) * 0.5;
        this._particles[this._val * i + 1] = (Math.random() - 0.5) * 0.5 + 0.4;
      }

      this._particles[this._val * i + 2] = 0;
      this._particles[this._val * i + 3] = 0;

      this._particles[this._val * i + 4] = 0;
      this._particles[this._val * i + 5] = 0;

      this._particles[this._val * i + 6] = 0.1 - (this._nodes[i].gen * 0.025);
      this._particles[this._val * i + 7] = this._nodes[i].id;

      if (this._nodes[i].getParent() != null) {
        this._particles[this._val * i + 8] = this._nodes[i].getParent().id;
      } else {
        this._particles[this._val * i + 8] = 0;
      }
      this._particles[this._val * i + 9] = 0;
      this._particles[this._val * i + 10] = 0;
      this._particles[this._val * i + 11] = 0;
      this._particles[this._val * i + 12] = 0;
      this._particles[this._val * i + 13] = 0;
      this._particles[this._val * i + 14] = 0;
      this._particles[this._val * i + 15] = 0;
    }
  }
  
  async createShaders() {
    let shaderCode = await this.loadShader("/shaders/massspring.wgsl");
    this._shaderModule = this._device.createShaderModule({
      label: "Particles Shader " + this.getName(),
      code: shaderCode,
    });
    // TODO 2: Create the bind group layout for the three storage buffers
    this._bindGroupLayout = this._device.createBindGroupLayout({
      // fill in the layout speficiations
      label: "Grid Bind Group Layout " + this.getName(),
      entries: [{
        binding: 0,
        visibility: GPUShaderStage.VERTEX | GPUShaderStage.COMPUTE,
        buffer: { type: "read-only-storage"} // particle input buffer
      }, 
      {
        binding: 1,
        visibility: GPUShaderStage.COMPUTE,
        buffer: { type: "storage"} // particle output buffer
      },
      {
        binding: 2,
        visibility: GPUShaderStage.VERTEX | GPUShaderStage.COMPUTE,
        buffer: { type: "read-only-storage"} // spring input buffer
      },
      {
        binding: 3,
        visibility: GPUShaderStage.COMPUTE,
        buffer: { type: "read-only-storage"} // boundary buffer
      },
    ]
    });

    this._pipelineLayout = this._device.createPipelineLayout({
      label: "Particles Pipeline Layout",
      bindGroupLayouts: [ this._bindGroupLayout ],
    });
  }
  
  async createRenderPipeline() { 
    await this.createParticlePipeline();
    await this.createSpringPipeline();
  }
  
  async createParticlePipeline() {
    this._particlePipeline = this._device.createRenderPipeline({
      label: "Particles Render Pipeline " + this.getName(),
      layout: this._pipelineLayout,
      vertex: {
        module: this._shaderModule, 
        entryPoint: "vertexMain",
      },
      fragment: {
        module: this._shaderModule,
        entryPoint: "fragmentMain",
        targets: [{
          format: this._canvasFormat
        }]
      },
      primitives: {
        typology: 'line-strip'
      }
    }); 
    // TODO 3: Create bind group to bind the mass-spring systems
    this._bindGroups = [
      this._device.createBindGroup({
        layout: this._particlePipeline.getBindGroupLayout(0),
        entries: [
          {
            binding: 0,
            resource: { buffer: this._particleBuffers[0] }
          },
          {
            binding: 1,
            resource: { buffer: this._particleBuffers[1] }
          },
          {
            binding: 2,
            resource: { buffer: this._springBuffer }
          },
          {
            binding: 3,
            resource: { buffer: this._boundaryBuffer }
          }
        ],
      }),
      this._device.createBindGroup({
        layout: this._particlePipeline.getBindGroupLayout(0),
        entries: [
          {
            binding: 0,
            resource: { buffer: this._particleBuffers[1] }
          },
          {
            binding: 1,
            resource: { buffer: this._particleBuffers[0] }
          },
          {
            binding: 2,
            resource: { buffer: this._springBuffer }
          },
          {
            binding: 3,
            resource: { buffer: this._boundaryBuffer }
          }
        ],
      })
    ];
  }
  
  async createSpringPipeline() {
    this._springPipeline = this._device.createRenderPipeline({
      label: "Spring Render Pipeline " + this.getName(),
      layout: this._pipelineLayout,
      vertex: {
        module: this._shaderModule, 
        entryPoint: "vertexSpringMain",
      },
      fragment: {
        module: this._shaderModule,
        entryPoint: "fragmentSpringMain",
        targets: [{
          format: this._canvasFormat
        }]
      },
      primitives: {
        typology: 'line-list'
      }
    }); 
  }
  
  render(pass) { 
    // draw the springs using lines
    pass.setPipeline(this._springPipeline);
    pass.setBindGroup(0, this._bindGroups[this._step % 2]);
    pass.draw(12, this._numSprings);
    // draw the particles using circles
    pass.setPipeline(this._particlePipeline); 
    pass.setBindGroup(0, this._bindGroups[this._step % 2]);
    pass.draw(128, this._numParticles);
  }
  
  async createComputePipeline() { 
    this._computePipeline = this._device.createComputePipeline({
      label: "Particles Compute Pipeline " + this.getName(),
      layout: this._pipelineLayout,
      compute: {
        module: this._shaderModule,
        entryPoint: "computeMain",
      }
    });
    this._updatePipeline = this._device.createComputePipeline({
      label: "Particles Update Pipeline " + this.getName(),
      layout: this._pipelineLayout,
      compute: {
        module: this._shaderModule,
        entryPoint: "updateMain",
      }
    });
  }
  
  compute(pass) { 
    // compute the displacements using Hooke's Law
    pass.setPipeline(this._computePipeline);
    pass.setBindGroup(0, this._bindGroups[this._step % 2]);
    pass.dispatchWorkgroups(Math.ceil(this._numSprings / 256));
    // compute the new positions
    pass.setPipeline(this._updatePipeline);
    pass.setBindGroup(0, this._bindGroups[this._step % 2]);
    pass.dispatchWorkgroups(Math.ceil(this._numParticles / 256));
    ++this._step
  }
}
