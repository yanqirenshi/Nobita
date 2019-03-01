class NobitaLines {
    constructor() {}
    draw(lines, d3svg, nodes) {
        let lines_g = d3svg.Svg().select('g.lines');
        let line_list = lines.list;
        let data_id = (d) => { return d._id; };


        lines_g
            .selectAll('line.nobita')
            .data(line_list, data_id)
            .exit()
            .remove();

        lines_g
            .selectAll('line')
            .data(line_list, data_id)
            .enter()
            .append('line')
            .attr('class', 'nobita')
            .attr('stroke-width', 3)
            .attr('stroke', 'black')
            .attr('marker-end', function (d) {
                return "url(#arrowhead)";
            });
    }
}
