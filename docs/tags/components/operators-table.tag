<operators-table>

    <table class="table is-bordered is-striped is-narrow is-hoverable">
        <thead>
            <tr>
                <th>Package</th>
                <th>Type</th>
                <th>Name</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr each={obj in operators()}>
                <td>{obj.package}</td>
                <td>{obj.type}</td>
                <td><a href={href(obj)}>{obj.name}</a></td>
                <td>{obj.description}</td>
            </tr>
        </tbody>
    </table>

    <script>
     let ndoc = new NobitaDoc();

     this.href = (data) => {
         return ndoc.makeDicDataLink (this.opts.linkPrefix, data);
     };

     this.operators = () => {
         return ndoc.filterDicData(this.opts.groups,
                                   STORE.state().toJS().operators);
     };
    </script>

</operators-table>
