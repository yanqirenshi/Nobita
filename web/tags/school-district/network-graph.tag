<network-graph>
    <svg></svg>

    <script>
     let nobita = new Nobita();

     this.d3svg = null;
     this.d3nodes = new d3Nodes();
     this.d3lines = new d3Lines();

     this.simulation = nobita.makeSimulation();

     this.on('mount', () => {
         let root = this.root;

         this.d3svg = new D3Svg({
             d3: d3,
             svg: d3.select("network-graph svg"),
             x: 0,
             y: 0,
             w: window.innerWidth,
             h: window.innerHeight,
             scale: 6.0
         });

         let svg = this.d3svg.Svg();

         nobita.makeCanvases(svg);
         nobita.makeArrowHead(svg);

         this.drawNodes();
         this.drawEdges();
     });

     this.drawNodes = () => {
         let node_data = STORE.state().get('nodes');
         this.simulation
             .nodes(node_data.list)
             .on("tick", () => {
                 let svg = this.d3svg.Svg();

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
                      })
                 ;
             })
             .force("collide", d3.forceCollide(188));

         this.d3nodes.draw(
             node_data,
             this.d3svg,
             this.simulation);

     };

     this.drawEdges = () => {
         let edges_data = STORE.state().get('edges');
         let node_data = STORE.state().get('nodes');

         this.d3lines.draw(edges_data, this.d3svg, node_data);
         this.simulation
             .force("link")
             .links(edges_data.list)
             .distance(888)
             .strength(1);
     };
    </script>
</network-graph>
