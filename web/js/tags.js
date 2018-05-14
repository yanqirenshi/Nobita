riot.tag2('app', '<stage></stage>', 'app stage,[data-is="app"] stage{ width: 100vw; height: 100vh; overflow: hidden; display: block; }', '', function(opts) {
     window.addEventListener('resize', (event) => {
         this.update();
     });

     this.on('mount', function () {
         Metronome.start();
     });
});

riot.tag2('stage', '<svg ref="svg-tag"></svg>', '', 'ref="self"', function(opts) {
     this.d3svg = null;
     this.d3force = null

     this.makeSvg = (svg, w, h) => {
         return new D3Svg({
             d3: d3,
             svg: svg,
             x: 0,
             y: 0,
             w: w,
             h: h,
             scale: 1
         });
     }

     this.addElementGroups = (d3svg) => {
         let makeSelection = (cls) => {
             return d3svg.Svg().append("g").attr("class", cls);
         };

         let lines = makeSelection('lines');
         let nodes = makeSelection('nodes');
         let labels = makeSelection('labels');

         return {
             lines : lines,
             nodes : nodes,
             labels: labels
         }
     };

     this.makeD3force = (d3svg) => {
         return new D3Force({
             d3: d3,
             svg: d3svg.Svg()
         });
     };

     this.draw = () => {
         let state = STORE.state();

         this.d3force.setData('nodes', state.get('nodes').arr);
         this.d3force.setData('links', state.get('edges').arr);

         let lines  = this.d3force.drawLinks();
         let nodes  = this.d3force.drawNodes();
         let labels = this.d3force.drawLabels();

     };

     this.on('mount', () => {
         this.d3svg = this.makeSvg(d3.select("stage svg"),
                                   this.refs.self.clientWidth,
                                   this.refs.self.clientHeight);

         this.d3force = this.makeD3force(this.d3svg);
         this.d3force.drawElementGroups(this.d3svg);
     });

     this.on('update', () => {
         this.draw();
     });

     STORE.subscribe((action) => {
         if (action.target=='stage')
             this.update()
     });
});
