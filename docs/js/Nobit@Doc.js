class NobitaDocDataModel {
    constructor (d3svg) {
        this.d3svg = d3svg;
        this.simulator = new D3Simulator().make();
    }
    /////
    ///// Test Data
    /////
    makeTestNode (id) {
         return {
             x: Math.floor(Math.random() * Math.floor(500)),
             y: Math.floor(Math.random() * Math.floor(500)),
             label: {
                 text: 'XYZ-'+id,
                 font: {
                     size: 12
                 }
             },
             circle: {
                 r: 33,
                 fill: '#eeeeee',
                 stroke: {
                     color: '#888888',
                     width: 1
                 }
             },
             _id: id,
             _class: 'XXX'
         };
     }
    makeTestNodes (n) {
         let nodes = [];
         for (let i=1 ; i<n ; i++)
             nodes.push(this.makeTestNode(i));
         return nodes;
    }
    makeTestEdge () {
        return {
            source: Math.floor(Math.random() * Math.floor(332)) + 1,
            target: Math.floor(Math.random() * Math.floor(332)) + 1
        };
    }
    makeTestEdges (n) {
        let edges = [];
        for (let i=1 ; i<n ;i++)
            edges.push(this.makeTestEdge());
        return edges;
    }
    /////
    ///// Test Data
    /////
    makeNode (data) {
         return {
             x: Math.floor(Math.random() * Math.floor(500)),
             y: Math.floor(Math.random() * Math.floor(500)),
             label: {
                 text: data.label.text,
                 font: {
                     size: 12
                 }
             },
             circle: {
                 r: 33,
                 fill: '#eeeeee',
                 stroke: {
                     color: '#888888',
                     width: 1
                 }
             },
             _id: data._id,
             _class: 'XXX'
         };
    }
    makeEdge (data, nodes) {
        let source = nodes.find((d) => { return data.source = d._id; });
        let target = nodes.find((d) => { return data.target = d._id; });

        return {
            source: source,
            target: target,
        };
    }
    /////
    ///// draw
    /////
    refreshSvgSize () { // TODO: これつこてない。たぶん。
        let tag = this.refs.svg;

        tag.setAttribute('width',window.innerWidth);
        tag.setAttribute('height',window.innerHeight);
    }
    draw (nodes, edges, rules) {
        if (!this.d3svg)
            return;

        let d3svg = this.d3svg;

        new D3Base().draw(d3svg);
        new D3Nodes().draw(d3svg,
                           nodes,
                           this.simulator,
                           (type, data) => { return; });
        new D3Edges().draw(d3svg, edges, this.simulator);
    }
}


class NobitaDoc {
    constructor(reducer) {}
    makeDicDataLink (linkPrefix, data) {
        if (!linkPrefix)
            return '';

        return linkPrefix + '/' + data.name;
    }
    filterDicData (target_group_names, dicdata) {
        if (!target_group_names || target_group_names.length==0)
            return dicdata;

        let check = (data) => {
            for (let group_name of target_group_names)
                if (data.group[group_name])
                    return true;

            return false;
        };

        let out = [];
        for (let data of dicdata)
            if (check(data))
                out.push(data);

        return out;
    }
}
