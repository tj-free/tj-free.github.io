import Node from '/lib/Tree/Node.js'

export default class Tree {

    constructor(root = null) {
        this.root = root;
        if (root == null) {
            this.num = 0;
        } else {
            this.num = 1;
        }
    }

    setRoot(node) {
        this.root = node;
    }

    addChild(nodeID,child) {
        const node = this.find(nodeID);
        node.addChild(child);
        this.num += 1;
    }

    getAllNodes() {
        const nodes = [];
        function traverse(node) {
            if (!node) return;
            nodes.push(node);
            node.children.forEach(traverse);
        }
        traverse(this.root);
        return nodes;
    }

    // Find a node by its nodeID
    find(nodeID) {
        let result = null;
        
        // Helper function to traverse the tree and search for the node
        function search(node) {
            if (!node) return;
            if (node.id === nodeID) {
                result = node;
                return;
            }
            node.children.forEach(search);
        }

        search(this.root);
        return result;
    }

    findIndex(nodeID) {
        let nodes = this.getAllNodes();
        for (let i = 0; i < nodes.length; i++) {
            if (nodes[i].id == nodeID) {
                return i;
            }
        }
        return null;
    }
}