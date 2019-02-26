class NobitaNodes {
    constructor(options) {
        this.callbacks = options.callbacks;
    }
    /////
    ///// Callbacks
    /////
    callback(keys_str) {
        if (!this.callbacks)
            return null;

        let keys = keys_str.split('.');
        let ht = this.callbacks;
        for (let key of keys) {
            if (!ht[key])
                return null;

            ht = ht[key];
        }

        return ht;
    }
    /////
    ///// Draw
    /////
    draw(nodes, d3svg, simulation) {
        let nodes_g = d3svg.Svg().select('g.nodes');
        let nodes_list = nodes.list;
        let data_id = (d) => { return d._id; };

        nodes_g
            .selectAll('g.node')
            .data(nodes_list, data_id)
            .exit()
            .remove();

        let node_groups =
            nodes_g
            .selectAll('g.node')
            .data(nodes_list, data_id)
            .enter()
            .append('g')
            .attr('class', 'node');

        node_groups
            .append('image')
            .on("click", (data) => {
                let func = this.callback('click');

                if (func)
                    func(data, d3.event);

                d3.event.stopPropagation();
            })
            .attr('class', 'frend')
            .attr('xlink:href', (d) => {
                let cls = d._class;
                if (cls=='NOBIT@') return '/nobit@/assets/image/nobit@.png';
                if (cls=='4NEO')   return '/nobit@/assets/image/4neo.png';
                if (cls=='G*AN')   return '/nobit@/assets/image/g_an.png';
                return '';
            })
            .call(d3.drag()
                  .on("start", (d) => {
                      if (!d3.event.active)
                          simulation.alphaTarget(0.3).restart();
                      d.fx = d.x;
                      d.fy = d.y;
                  })
                  .on("drag", (d) => {
                      d.fx = d3.event.x;
                      d.fy = d3.event.y;
                  })
                  .on("end", (d) => {
                      if (d.location.hold) {
                          d.location.x    = d.fx;
                          d.location.y    = d.fy;

                          ACTIONS.saveNodeLocation(d);
                      } else {
                          d.fx = null;
                          d.fy = null;
                      }
                  }));
    }
}
