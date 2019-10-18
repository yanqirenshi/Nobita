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
    makeNodeMakePosition (position) {
        let new_position = {
            x:0,
            y:0,
            hold: false
        };

        if (!position)
            return new_position;

        if (position.x || position.x==0)
            new_position.x = position.x;

        if (position.y || position.y==0)
            new_position.y = position.y;

        if (position.hold===true || position.hold===false)
            new_position.hold = position.hold;

        return new_position;
    }
    makeNodeLabel (data) {
        let new_label = {
            text: '',
            font: {
                size: 36,
            },
            position: { x: 0, y: 0 },
        };

        if (!data)
            return new_label;

        let data_label = data.label;

        if (data_label && data_label.text)
            new_label.text = data_label.text;

        if (data.font && data_label.font.size)
            new_label.font.size = data_label.font.size;

        if (data_label.position) {
            if (data_label.position.x)
                new_label.position.x = data_label.position.x;

            if (data_label.position.y)
                new_label.position.y = data_label.position.y;
        }

        return new_label;
    }
    makeNodeLabel2 (type, data) {
        let new_label = {
            text: '',
            font: {
                size: 36,
            },
            position: { x: 0, y: 0 },
        };

        if (!data)
            return new_label;

        let data_label = data.label[type];

        if (data_label && data_label.text)
            new_label.text = data_label.text;

        if (data.font && data_label.font.size)
            new_label.font.size = data_label.font.size;

        if (data_label.position) {
            if (data_label.position.x)
                new_label.position.x = data_label.position.x;

            if (data_label.position.y)
                new_label.position.y = data_label.position.y;
        }

        return new_label;
    }
    makeNode (data) {
        let position = this.makeNodeMakePosition(data.position);

        let out = {
            x: position.x,
            y: position.y,
            label: {
                circle: this.makeNodeLabel2('circle', data),
                node:   this.makeNodeLabel2('node',   data),
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
            _class: 'XXX',
            _core: data,
        };

        if (position.hold) {
            out.fx = out.x;
            out.fy = out.y;
        }

        return out;
    }
    makeEdgeStroke (data) {
        let new_stroke = {
            w: 1,
            color: '#333333',
        };

        if (!data || !data.stroke)
            return new_stroke;

        let data_stroke = data.stroke;

        if (!data_stroke.w || data_stroke.w==0)
            new_stroke.w = data_stroke.w;

        if (!data_stroke.color)
            new_stroke.color = data_stroke.color;

        return new_stroke;
    }
    makeEdge (data, nodes) {
        let source = nodes.find((d) => { return data.source = d._id; });
        let target = nodes.find((d) => { return data.target = d._id; });

        return {
            source: source,
            target: target,
            stroke: data.stroke,
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
