<slots-list>
    <table class="table is-bordered is-striped is-narrow is-hoverable">
        <thead>
            <tr><th each={header}>{label}</th></tr>
        </thead>
        <tbody>
            <tr each={opts.slots}>
                <td>{name}</td>
                <td>{type}</td>
                <td>{description}</td>
            </tr>
        </tbody>
    </table>

    <script>
     this.header = [
         { label: 'Type' },
         { label: 'Name' },
         { label: 'Description' }
     ];
    </script>
</slots-list>
