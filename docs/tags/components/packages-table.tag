<packages-table>

    <table class="table is-bordered is-striped is-narrow is-hoverable">
        <thead>
            <tr>
                <th>Name</th>
                <th>Nicknames</th>
                <th>File</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr each={obj in packages()}>
                <td>{obj.name}</td>
                <td>
                    <span each={nn in obj.nicknames}>
                        {nn}
                    </span>
                </td>
                <td>{obj.file}</td>
                <td>{obj.description}</td>
            </tr>
        </tbody>
    </table>

    <script>
     let ndoc = new NobitaDoc();

     this.packages = () => {
         let all = STORE.state().get('packages');

         return all;
     };
    </script>

</packages-table>
