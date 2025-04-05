export default class UnitSphere {
  constructor(latitudeBands = 30, longitudeBands = 30) {
    this._pose = new Float32Array(Array(16).fill(0));
    this._pose[0] = 1;
    this._scales = new Float32Array(Array(4).fill(1));

    this.vertices = [];
    this.indices = [];

    for (let lat = 0; lat <= latitudeBands; ++lat) {
      const theta = lat * Math.PI / latitudeBands;
      const sinTheta = Math.sin(theta);
      const cosTheta = Math.cos(theta);

      for (let lon = 0; lon <= longitudeBands; ++lon) {
        const phi = lon * 2 * Math.PI / longitudeBands;
        const sinPhi = Math.sin(phi);
        const cosPhi = Math.cos(phi);

        const x = cosPhi * sinTheta;
        const y = cosTheta;
        const z = sinPhi * sinTheta;

        this.vertices.push(x, y, z, 1); // (x, y, z, w)
      }
    }

    for (let lat = 0; lat < latitudeBands; ++lat) {
      for (let lon = 0; lon < longitudeBands; ++lon) {
        const first = (lat * (longitudeBands + 1)) + lon;
        const second = first + longitudeBands + 1;

        this.indices.push(first, second, first + 1);
        this.indices.push(second, second + 1, first + 1);
      }
    }

    this._vertices = new Float32Array(this.vertices);
    this._indices = new Uint16Array(this.indices);
  }

  updatePose(newPose) {
    for (let i = 0; i < 16; ++i) this._pose[i] = newPose[i];
  }

  get vertexBuffer() {
    return this._vertices;
  }

  get indexBuffer() {
    return this._indices;
  }
}
