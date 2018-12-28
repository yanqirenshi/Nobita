<generic-function_propagations_method-signatures>
    <table class="table is-bordered is-striped is-narrow is-hoverable">
        <thead>
            <tr>
                <th each={headers}>{label}</th>
            </tr>
        </thead>
        <tbody>
            <tr each={contents}>
                <td>{for}</td>
                <td>{graph}</td>
                <td>{idea}</td>
                <td>{source}</td>
                <td>{targets}</td>
            </tr>
        </tbody>
    </table>

    <script>
     this.headers = [
         { code: 'for',     label: 'for'},
         { code: 'graph',   label: 'Graph'},
         { code: 'idea',    label: 'Idea'},
         { code: 'source',  label: 'Source'},
         { code: 'targets', label: 'Targets'}
     ];
     this.contents = [
         { for:'List', graph:'shinra:banshou', idea:'list', source:false, targets:'list' }
     ];
     /*
     this.data = () => {
         let contents = this.contents;
         let out = [];

         for (var i in contents) {
             contents[i]
         }
         return out;
     };
     */
    </script>
</generic-function_propagations_method-signatures>
