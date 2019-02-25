<network-graph>
    <svg></svg>

    <script>
     let nobita = new Nobita();

     this.d3svg = null;
     this.d3nodes = new NobitaNodes();
     this.d3lines = new NobitaLines();

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

         nobita.addData2Simulation(
             this.d3svg.Svg(),
             this.simulation,
             node_data.list);

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
