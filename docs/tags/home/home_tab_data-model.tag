<home_tab_data-model>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">OverView</h1>
            <h2 class="subtitle"></h2>

            <div class="contents">
                <div ref="svg-parent" style="padding: 8px;border: 1px solid #eeeeee; border-radius: 8px; margin-bottom:55px;">
                    <svg id="scketchbook"></svg>
                </div>

                <home_tab_data-model-operators-matrix></home_tab_data-model-operators-matrix>
            </div>
        </div>
    </section>

    <script>
     this.nodes = [
         { _id:  1, label: { text: 'g*an' } },
         { _id:  2, label: { text: '4neo' } },
         { _id:  3, label: { text: 'nobit@' } },
         { _id:  4, label: { text: 'heart' } },
         { _id:  5, label: { text: 'friendship' } },
         { _id:  6, label: { text: 'karma-pool' } },
         { _id:  7, label: { text: 'karma' } },
         { _id:  8, label: { text: 'idea' } },
         { _id:  9, label: { text: 'pocket' } },
         { _id: 10, label: { text: 'spread-action' } },
     ];
     let id = 100;
     this.edges = [
         { _id: id++, source: 1, target: 2 },
         { _id: id++, source: 2, target: 3 },

         { _id: id++, source: 4, target: 5 },
         { _id: id++, source: 4, target: 6 },
         { _id: id++, source: 6, target: 7 },

         { _id: id++, source:  9, target: 10 },
         { _id: id++, source: 10, target:  8 },
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
         let width  = this.refs['svg-parent'].clientWidth - 8 * 2;
         let height = 555;

         this.sketcher = this.makeSketcher(
             (width<0 ? 0 : width),
             height);
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
