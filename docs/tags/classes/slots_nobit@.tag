<slots_nobita>
    <table class="table is-bordered is-striped is-narrow is-hoverable">
        <thead>
            <tr><th each={header}>{label}</th></tr>
        </thead>
        <tbody>
            <tr each={body}>
                <td>{name}</td>
                <td>{type}</td>
                <td>{description}</td>
            </tr>
        </tbody>
    </table>

    <script>
     this.header = [
         { label: 'type' },
         { label: 'name' },
         { label: 'description' },
     ];
     this.body = [
         { name: 'name',        description: 'ノードの名称',   type: 'String' },
         { name: 'action',      description: '実行するコード', type: 'PList' },
         { name: 'description', description: '説明',           type: 'String' },
     ];
    </script>
</slots_nobita>
