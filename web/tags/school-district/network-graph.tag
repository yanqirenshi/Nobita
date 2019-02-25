<network-graph>
    <svg></svg>

    <script>
     let nobita = new Nobita();

     this.d3svg = null;

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

         let nodes = STORE.state().get('nodes');
         let edges = STORE.state().get('edges');

         nobita.d3svg(this.d3svg);

         nobita
             .prepare()
             .draw(nodes, edges);
     });
    </script>
</network-graph>
