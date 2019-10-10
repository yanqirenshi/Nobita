<network-graph>

    <svg></svg>

    <script>
     this.d3svg = null;

     let nobita = new Nobita({
         callbacks: {
             node: {
                 click: (data, event) => {
                     ACTIONS.selectSchoolDistrictGraphNode(data);
                 }
             }
         }
     });
    </script>

    <script>

     this.on('update', () => {
         this.draw();
     });

     this.on('mount', () => {
         this.redy();
         this.draw();
     });
    </script>

    <script>
     this.redy = () => {
         let root = this.root;

         let painter = new Sketcher({
             element: {
                 selector: 'network-graph svg',
             },
             x: 0,
             y: 0,
             w: window.innerWidth,
             h: window.innerHeight,
             scale: 6.0,
             callbacks: {
                 moveEndSvg: null,
                 zoomSvg: null,
                 clickSvg: () => {
                     ACTIONS.clearSelectSchoolDistrict();
                 },
             }
         });

         this.d3svg = painter.makeD3Svg();
         painter.makeBases(this.d3svg, [
             { _id: -10, code: 'lines' },
             { _id:  -5, code: 'nodes' },
         ])
         painter.drawBackground(this.d3svg);
     }

     this.draw = () => {
         let nodes = this.opts.source.nodes;
         let edges = this.opts.source.edges;

         nobita.d3svg(this.d3svg);

         nobita
             .prepare()
             .draw(nodes, edges);
     };
    </script>

</network-graph>
