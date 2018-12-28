<hearts_root_operators>
    <table class="table is-bordered is-striped is-narrow is-hoverable">
        <thead>
            <tr>
                <td>Type</td>
                <td>Name</td>
                <td>Description</td>
            </tr>
        </thead>
        <tbody>
            <tr each={data}>
                <td>{type}</td>
                <td>{name}</td>
                <td>{description}</td>
            </tr>
        </tbody>
    </table>

    <script>
     this.data = [
         { type: 'Function', name: '%heart-core',              description: '' },
         { type: 'Data',     name: '*hook-heart-core-before*', description: '' },
         { type: 'Data',     name: '*hook-heart-core-after*',  description: '' },
         { type: 'Function', name: 'heart-core-before',        description: '' },
         { type: 'Function', name: 'heart-core-after',         description: '' },
         { type: 'Function', name: 'heart-core',               description: '' },
         { type: 'Data',     name: '*hearts*',                 description: '' },
         { type: 'Function', name: 'get-heart',                description: '' },
         { type: 'Function', name: 'add-heart',                description: '' },
         { type: 'Function', name: 'rm-heart',                 description: '' },
         { type: 'Function', name: 'start',                    description: '' }
     ];
    </script>
</hearts_root_operators>
