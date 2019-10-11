class Nobita {
    constructor (options) {
        if (!options)
            return;

        this._d3svg = null;
        this._simulation = null;

        if (options)
            this._callbaks = options.callbacks;
        else
            this._callbaks = {};

        this.nobitaNodes = new NobitaNodes({
            callbacks: this._callbaks.node
        });
        this.nobiLines   = new NobitaLines();

    }
    /////
    ///// Setter Getter
    /////
    d3svg (v) {
        if (arguments.length > 0)
            this._d3svg = v;

        return this._d3svg;
    }
    simulation (v) {
        if (arguments.length > 0)
            this._simulation = v;

        return this._simulation;
    }
    /////
    ///// Simulation
    /////
    makeSimulation () {
        this._simulation = d3.forceSimulation()
            .force("link", d3.forceLink().id(function(d) {
                return d._id;
            }))
            .force("charge", d3.forceManyBody())
            .force("center", d3.forceCenter(window.innerWidth / 2, window.innerHeight / 2));

        return this._simulation;
    }
    simulationTickNodes (svg, nodes) {
        nodes
            .attr("transform", function(d) {
                return "translate(" + d.x + "," + d.y + ")";
            });
    }
    // .attr(;
    simulationTickLines (svg, lines) {
        lines
            .attr("x1", function(d) { return d.source.x + 256 / 2; })
            .attr("y1", function(d) { return d.source.y + 256 / 2; })
            .attr("x2", function(d) { return d.target.x + 256 / 2; })
            .attr("y2", function(d) { return d.target.y + 256 / 2; })
            .attr('stroke-dasharray', (d) => {
                let from = d.source;
                let to = d.target;
                let x1 = from.x;
                let y1 = from.y;
                let x2 = to.x;
                let y2 = to.y;
                let r = 256 / 2 + 22;
                let v = Math.sqrt(Math.pow(x2 - x1, 2) + Math.pow(y2 - y1, 2));
                return '0, ' + r + ', ' + (Math.floor(v) - r*2) + ', ' + r;
            });
    }
    simulationTick (svg) {
        let nodes = svg.selectAll('g.node');
        this.simulationTickNodes(svg, nodes);

        let lines = svg.selectAll('line.nobita');
        this.simulationTickLines(svg, lines);
    }
    addData2Simulation (svg, simulation, data) {
        simulation
            .nodes(data)
            .on("tick", () => { this.simulationTick(svg); })
            .force("collide", d3.forceCollide(188));
    }
    /////
    ///// Prepare Draw
    /////
    makeArrowHead () {
        let svg = this.d3svg().Svg();

        var marker = svg
            .append("defs")
            .append("marker")
            .attr('id', "arrowhead")
            .attr('refX', 53)
            .attr('refY', 2)
            .attr('markerWidth', 8)
            .attr('markerHeight', 8)
            .attr('orient', 'auto');

        marker.append("path")
            .attr('d', "M 0,0 V 4 L4,2 Z")
            .attr('fill', "#000");

        return this;
    }
    makeCanvases () {
        let svg = this.d3svg().Svg();

        svg.selectAll('g.lines')
            .data([{_id:-2, code: 'nodes'}])
            .enter()
            .append('g')
            .attr('class','lines');

        svg.selectAll('g.nodes')
            .data([{_id:-1, code: 'nodes'}])
            .enter()
            .append('g')
            .attr('class','nodes');

        return this;
    }
    prepare () {
        this.makeSimulation();
        // this.makeCanvases();
        this.makeArrowHead();

        return this;
    }
    /////
    ///// Draw
    /////
    drawNodes(node_data) {
        let d3svg = this.d3svg();
        let simulation = this.simulation();

        this.addData2Simulation(d3svg.Svg(), simulation, node_data.list);

        this.nobitaNodes.draw(node_data, d3svg, simulation);
    }
    drawEdges (node_data, edges_data) {
        let d3svg = this.d3svg();

        this.nobiLines.draw(edges_data, d3svg, node_data);

        let simulation = this.simulation();
        simulation
            .force("link")
            .links(edges_data.list)
            .distance(888)
            .strength(1);
    }
    draw (nodes, edges) {
        this.drawNodes(nodes);
        this.drawEdges(nodes, edges);

        return this;
    }
    /////
    ///// School District Inspector
    ///// きったねぇ処理だなぁ。
    /////
    switchSchoolDistrictInspectorContents (params) {
        let coller = params.coller;

        let removeAllContents = (root) => {
            for (let k in params.tagData) {
                let tag_name = params.tagData[k];
                let tag = coller.tags[tag_name];
                if (!tag)
                    continue;

                tag.unmount();

                delete coller.tags[tag_name];
            }
        };
        let getTagName = (data) => {
            if (!data)
                return '';

            return params.tagData[data._class];
        };

        let mountDataTAg = (root, data) => {
            let tagName = getTagName(data);
            let opts    = { source: data };

            var inspector_contents = document.createElement(tagName);
            root.appendChild(inspector_contents);

            let tags = riot.mount(inspector_contents, tagName, opts);

            for (let tag of tags)
                coller.tags[tagName] = tag;
        };

        removeAllContents(params.root);

        if (!params.data)
            return;

        mountDataTAg(params.root, params.data);
    }
    /////
    ///// PageLink
    /////
    makeFriendHash (prefix, friend) {
        let type = {
            'G*AN': 'g*ans',
            '4NEO': '4neos',
            'NOBIT@': 'nobitas',
        }[friend._class];

        return prefix + '/' + type + '/' + friend._id;
    }
}
