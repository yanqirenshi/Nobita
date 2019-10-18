<home_tab_data-model-graph>

    <div ref="svg-parent" style="">
        <svg id="scketchbook"></svg>
    </div>

    <script>
     this.sketcher = null;
     this.painter  = null;
     this.getSize = () => {
         let x = this.refs['svg-parent'].clientWidth - 8 * 2;

         if (x < 0)
             x = 0;

         return { w: x, h: 555, };
     }
     this.makeCamera = (size) => {
         let scale = 2.5
         return {
             look: {
                 at: {
                     x: (size.w / 2),
                     y: (size.h / 2),
                 },
             },
             scale: 2.5,
         };
     }
     this.makeOption = () => {
         let size   = this.getSize();
         let camera = this.makeCamera(size);

         return {
             element: {
                 selector: 'svg#scketchbook',
             },
             w: size.w,
             h: size.h,
             x: camera.look.at.x - 1000,
             y: camera.look.at.y -  500,
             scale: camera.scale,
         };
     }
     this.makeSketcher = (w, h) => {
         return new DefaultSketcher(this.makeOption());
     };

     this.on('updated', () => {
         let size = this.getSize();

         this.sketcher = this.makeSketcher(size.w, size.h);
         this.sketcher.underpainting();

         this.painter = new NobitaDocDataModel(this.sketcher.d3Svg());


         let nodes = this.opts.source.nodes.map((d) => {
             return this.painter.makeNode(d);
         });
         let edges = this.opts.source.edges;

         this.painter.draw({ list: nodes },
                           { list: edges },
                           null);
     });
    </script>

    <style>
     home_tab_data-model-graph > div {
         padding: 8px;
         border: 1px solid #eeeeee;
         border-radius: 8px;
         margin-bottom:55px;
         background: #fff;
     }
    </style>

</home_tab_data-model-graph>
