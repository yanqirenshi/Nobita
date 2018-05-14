<stage ref="self">
    <svg ref="svg-tag"></svg>

    <script>
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

         // データと要素を紐付け、要素を削除/追加する。 追加した要素(Selection)を返す。
         let lines  = this.d3force.drawLinks();
         let nodes  = this.d3force.drawNodes();
         let labels = this.d3force.drawLabels();

         // 追加された要素に対してシュミレーション設定をする。
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
    </script>
</stage>
