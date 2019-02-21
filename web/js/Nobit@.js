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
}
