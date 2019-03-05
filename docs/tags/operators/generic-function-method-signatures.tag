<generic-function-method-signatures>
    <table class="table is-bordered is-striped is-narrow is-hoverable">
        <thead>
            <tr>
                <th>graph</th>
                <th>idea</th>
                <th>source</th>
                <th>target</th>
            </tr>
        </thead>
        <tbody>
            <tr each={d in (opts.source ? opts.source : sample)}>
                <td>{d.graph}</td>
                <td>{d.idea}</td>
                <td>{d.source}</td>
                <td>{d.target}</td>
            </tr>
        </tbody>
    </table>

    <script>

     this.sample = [
         { graph: 'shinra:banshou', idea: 'list', source: 't', target: '4neo' },
         { graph: 'shinra:banshou', idea: 'list', source: 't', target: 'friendship' },
         { graph: 'shinra:banshou', idea: 'list', source: 't', target: 'g*an' },
         { graph: 'shinra:banshou', idea: 'list', source: 't', target: 'nobit@' },
     ];
    </script>
</generic-function-method-signatures>
