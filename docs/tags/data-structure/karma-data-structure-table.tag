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
     this.datastruct = [
         { indicator: 'sequence',   description: 'なんやろう。。。これ。。。。'},
         { indicator: 'idea_id',    description: 'なんやろう。。。これ。。。。'},
         { indicator: 'graph',      description: 'なんやろう。。。これ。。。。'},
         { indicator: 'source',     description: 'なんやろう。。。これ。。。。'},
         { indicator: 'friendship', description: 'なんやろう。。。これ。。。。'},
     ];
    </script>
</karma-data-structure-table>
