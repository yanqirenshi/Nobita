<home_tab_data-model>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">OverView</h1>
            <h2 class="subtitle"></h2>

            <div class="contents">
                <home_tab_data-model-graph source={graphData()}></home_tab_data-model-graph>

                <home_tab_data-model-operators-matrix></home_tab_data-model-operators-matrix>
            </div>
        </div>
    </section>

    <script>
     this.graphData = () => {
         let labelCircle = (text) => {
             return {
                 text: text,
                 font: { size: 48 },
                 position: { x: -12, y: 12 },
             };
         }
         let labelNode = (text)  => {
             return {
                 text: text,
                 font: { size: 36 },
                 position: { x: -8, y: 8 },
             };
         }
         let nodes = [
             {
                 _id:  1,
                 label: {
                     circle: labelCircle('G'),
                     node:   labelNode('g*an'),
                 },
                 position: { x: -600, y: -300, hold:  true },
             },
             {
                 _id:  2,
                 label: {
                     circle: labelCircle('4'),
                     node:   labelNode('4neo'),
                 },
                 position: { x: -400, y: -300, hold:  true },
             },
             {
                 _id:  3,
                 label: {
                     circle: labelCircle('N'),
                     node:   labelNode('nobit@'),
                 },
                 position: { x: -200, y: -300, hold:  true },
             },
             {
                 _id:  4,
                 label: {
                     circle: labelCircle('H'),
                     node:   labelNode('heart'),
                 },
                 position: { x: -600, y: 200, hold: true },
             },
             {
                 _id:  5,
                 label: {
                     circle: labelCircle("F"),
                     node:   labelNode('friendship'),
                 },
                 position: { x: -900, y: 200, hold: true },
             },
             {
                 _id:  6,
                 label: {
                     circle: labelCircle('KP'),
                     node:   labelNode('karma-pool'),
                 },
                 position: { x: -400, y: 200, hold: true },
             },
             {
                 _id:  7,
                 label: {
                     circle: labelCircle('K'),
                     node:   labelNode('karma'),
                 },
                 position: { x: -100, y: 200, hold: true },
             },
             {
                 _id:  8,
                 label: {
                     circle: labelCircle('I'),
                     node:   labelNode('idea'),
                 },
                 position: { x: 100, y: 200, hold: true },
             },
             {
                 _id:  9,
                 label: {
                     circle: labelCircle('P'),
                     node:   labelNode('pocket'),
                 },
                 position: { x: 600, y: 200, hold: true },
             },
             {
                 _id: 10,
                 label: {
                     circle: labelCircle('SA'),
                     node:   labelNode('spread-action'),
                 },
                 position: { x: 300, y: 200, hold: true },
             },
             {
                 _id: 11,
                 label: {
                     circle: labelCircle('D@'),
                     node:   labelNode('dra@mon'),
                 },
                 position: { x: 400, y: -300, hold: true },
             },
             {
                 _id: 12,
                 label: {
                     circle: labelCircle('Fi'),
                     node:   labelNode('future-item'),
                 },
                 position: { x: 200, y: -300, hold: true },
             },
         ];
         let id = 100;
         let edges = [
             { _id: id++, source:  1, target:  2, stroke: { w: 6, color: '#cccccc' } },
             { _id: id++, source:  2, target:  3, stroke: { w: 6, color: '#cccccc' } },

             { _id: id++, source:  4, target:  5, stroke: { w: 6, color: '#cccccc' } },
             { _id: id++, source:  4, target:  6, stroke: { w: 6, color: '#cccccc' } },
             { _id: id++, source:  6, target:  7, stroke: { w: 6, color: '#cccccc' } },

             { _id: id++, source:  9, target: 10, stroke: { w: 6, color: '#cccccc' } },
             { _id: id++, source: 10, target:  8, stroke: { w: 6, color: '#cccccc' } },

             { _id: id++, source: 11, target: 12, stroke: { w: 6, color: '#cccccc' } },
             { _id: id++, source:  3, target: 12, stroke: { w: 6, color: '#cccccc' } },
         ];
         return {
             nodes: nodes,
             edges: edges,
         }
     }
    </script>

</home_tab_data-model>
