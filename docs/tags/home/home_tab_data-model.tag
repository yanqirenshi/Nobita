<home_tab_data-model>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">OverView</h1>
            <h2 class="subtitle"></h2>

            <div class="contents">
                <div ref="svg-parent" style="padding: 8px;border: 1px solid #eeeeee; border-radius: 8px;">
                    <svg id="scketchbook"></svg>
                </div>
            </div>
        </div>
    </section>

    <script>
     this.nodes = [
         { _id: 1, label: { text: 'g*an' } },
         { _id: 2, label: { text: '4neo' } },
         { _id: 3, label: { text: 'nobit@' } },
         { _id: 4, label: { text: 'draem-on' } },
     ];
     let id = 100;
     this.edges = [
         { _id: id++, source: 1, target: 2 },
         { _id: id++, source: 2, target: 3 },
         { _id: id++, source: 3, target: 4 },
     ];
    </script>

    <script>
     this.sketcher = null;
     this.painter  = null;

     this.makeSketcher = (w, h) => {
         let camera = {
             look: {
                 at: {
                     x: 0,
                     y: 0.0,
                 },
             },
             scale: 1.3,
         };

         return new Sketcher({
             element: {
                 selector: 'home_tab_data-model svg#scketchbook',
             },
             w: w,
             h: h,
             x: camera.look.at.x,
             y: camera.look.at.y,
             scale: camera.scale,
         });
     };

     this.on('updated', () => {
         this.sketcher = this.makeSketcher(
             this.refs['svg-parent'].clientWidth - 8*2,
             333);
         this.sketcher.underpainting();

         this.painter = new NobitaDocDataModel(this.sketcher.d3Svg());

         let nodes = this.nodes.map(this.painter.makeNode);
         let edges = this.edges;

         this.painter.draw({ list: nodes },
                           { list: this.edges },
                           null);
     });
    </script>

</home_tab_data-model>
