<generic-function_propagation_method-signatures>
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
                <td>{target}</td>
            </tr>
        </tbody>
    </table>

    <script>
     this.headers = [
         { code: 'for',     label: 'for'},
         { code: 'graph',   label: 'Graph'},
         { code: 'idea',    label: 'Idea'},
         { code: 'source',  label: 'Source'},
         { code: 'target', label: 'Target'}
     ];
     this.contents = [
         { for:'G*AN',       graph:'SHINRA:BANSHOU', idea:'List', source:false, target:'G*AN' },
         { for:'4NEO',       graph:'SHINRA:BANSHOU', idea:'List', source:false, target:'4NEO' },
         { for:'NOBIT@',     graph:'SHINRA:BANSHOU', idea:'List', source:false, target:'NOBIT@' },
         { for:'FRIENDSHIP', graph:'SHINRA:BANSHOU', idea:'List', source:false, target:'FRIENDSHIP' }
     ];
    </script>
</generic-function_propagation_method-signatures>
