<friendship>
    <section class="hero">
        <div class="hero-body">
            <div class="container">
                <h1 class="title">友情</h1>
                <h2 class="subtitle">けっして切れない鎖</h2>
            </div>
        </div>
    </section>

    <section class="section">
        <div class="container">
            <h1 class="title">List</h1>
            <h2 class="subtitle"></h2>

            <div class="contents">
                <table class="table is-bordered is-striped is-narrow is-hoverable">
                    <thead>
                        <tr>
                            <th rowspan="2">id</th>
                            <th rowspan="2">distance</th>
                            <th rowspan="2">index</th>
                            <th colspan="2">Source</th>
                            <th colspan="2">target</th>
                        </tr>
                        <tr>
                            <th>id</th>
                            <th>name</th>
                            <th>id</th>
                            <th>name</th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr each={obj in sources()}>
                            <td>{obj._id}</td>
                            <td>{obj.distance}</td>
                            <td>{obj.index}</td>
                            <td>{obj.source._id}</td>
                            <td>{obj.source.name}</td>
                            <td>{obj.target._id}</td>
                            <td>{obj.target.name}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>

    <script>
     this.sources = () => {
         return STORE.get('edges.list');
     };
    </script>
</friendship>
