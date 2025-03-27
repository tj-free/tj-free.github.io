import Tree from '/lib/Tree/Tree.js';

export default class Node {
    constructor(id=0, x=0, y=0) {
        this.id = id;
        this.x = x;
        this.y = y;
        this.vx = 0; // Velocity in x direction
        this.vy = 0; // Velocity in y direction
        this.children = [];
        this.parent = null;
        this.gen = 0;
    }

    addChild(child) {
        child.parent = this;
        child.gen = this.gen+1;
        this.children.push(child);

    }

    getID() {
        return this.id;
    }

    alterX(x) {
        this.x += x;
    }

    alterY(y) {
        this.y += y;
    }

    getX() {
        return this.x;
    }

    getChildren() {
        return this.children;
    }

    getParent() {
        return this.parent;
    }
}
  
  
  
  