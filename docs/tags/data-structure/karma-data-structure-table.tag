<karma-data-structure-table>

    <table class="table is-bordered is-striped is-narrow is-hoverable">
        <thead>
            <th>Indicator</th>
            <th>Description</th>
        </thead>

        <tbody>
            <tr each={rec in datastruct}>
                <td>{rec.indicator}</td>
                <td>{rec.description}</td>
            </tr>
        </tbody>
    </table>

    <script>
     this.datastruct = STORE.state().toJS().data.structures.karma;
    </script>

</karma-data-structure-table>
