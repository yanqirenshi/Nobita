<home_tab_data-model-operators-matrix>

    <table class="table is-bordered is-striped is-narrow is-hoverable">
        <thead>
            <tr>
                <th rowspan="2">Object</th>
                <th colspan="4">CRUD</th>
                <th rowspan="2">Description</th>
            </tr>
            <tr>
                <th>C</th>
                <th>R</th>
                <th>U</th>
                <th>D</th>
            </tr>
        </thead>
        <tbody>
            <tr each={obj in list}>
                <td>{obj.source}</td>
                <td><p each={d in obj.c}>{d}</p></td>
                <td><p each={d in obj.r}>{d}</p></td>
                <td><p each={d in obj.u}>{d}</p></td>
                <td><p each={d in obj.d}>{d}</p></td>
                <td>{obj.description}</td>
            </tr>
        </tbody>
    </table>

    <script>
     this.list = [
         {
             source: 'pocket (dra@mon)',
             c: ['add-to-pocket'],
             r: ['get-from-pocket', 'find-from-pocket'],
             u: [],
             d: ['rm-from-pocket'],
             description: ''
         },
         {
             source: 'nobit@',
             c: ['tx-make-nobit@'],
             r: ['get-nobit@', 'find-nobit@'],
             u: [],
             d: [],
             description: ''
         },
         {
             source: 'g*an',
             c: ['tx-make-g*an'],
             r: ['get-g*an', 'find-g*an'],
             u: [],
             d: [],
             description: ''
         },
         {
             source: '4neo',
             c: ['tx-make-4neo'],
             r: ['get-4neo', 'find-4neo'],
             u: [],
             d: [],
             description: ''
         },
         {
             source: 'friend',
             c: [],
             r: ['get-friend'],
             u: ['tx-save-location'],
             d: [],
             description: ''
         },
         {
             source: 'heart',
             c: ['make-heart'],
             r: ['get-heart', 'find-hearts'],
             u: ['start-heart', 'stop-heart'],
             d: [],
             description: ''
         },
         {
             source: 'friendship',
             c: ['tx-make-frendship'],
             r: ['find-frendship'],
             u: [],
             d: [],
             description: ''
         },
         {
             source: 'karma-pool',
             c: ['make-karma-pool'],
             r: [],
             u: ['push-karma', 'pop-karma'],
             d: [],
             description: ''
         },
         {
             source: 'karma',
             c: [],
             r: [],
             u: [],
             d: [],
             description: ''
         },
         {
             source: 'spread-action',
             c: [],
             r: [],
             u: [],
             d: [],
             description: ''
         },
         {
             source: 'idea',
             c: ['make-idea', 'copy-idea'],
             r: [],
             u: [],
             d: [],
             description: ''
         },
     ];
    </script>

</home_tab_data-model-operators-matrix>
