class Nobita {
    constructor () {}
    makeSimulation () {
        return d3.forceSimulation()
            .force("link", d3.forceLink().id(function(d) {
                return d._id;
            }))
            .force("charge", d3.forceManyBody())
            .force("center", d3.forceCenter(window.innerWidth / 2, window.innerHeight / 2));

        return this;
    }
    makeArrowHead (svg) {
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
    makeCanvases (svg) {
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
    addData2Simulation (svg, simulation, data) {
        simulation
            .nodes(data)
            .on("tick", () => {
                let images = svg.selectAll('image.frend');
                images.attr("x", function(d) { return d.x; })
                    .attr("y", function(d) { return d.y; });

                let lines = svg.selectAll('line');
                lines.attr("x1", function(d) { return d.source.x + 256 / 2; })
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
            })
            .force("collide", d3.forceCollide(188));
    }
}
