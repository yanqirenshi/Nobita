<hearts_tab_management>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">心臓は八つ用意されています。</h1>
            <h2 class="subtitle"></h2>

            <div class="contents">
                <p>追加/削除が可能です。</p>

                <table class="table is-bordered is-striped is-narrow is-hoverable">
                    <thead>
                        <tr>
                            <th>Code</th>
                            <th>Name</th>
                            <th>Core</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr each={heart in hearts}>
                            <td>{heart.code}</td>
                            <td>{heart.name}</td>
                            <td>{heart.core}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">Operators:</h1>

            <div class="contents">
                <operators-table targets={targets.operators}
                                 link-prefix={location.hash}></operators-table>
            </div>
        </div>
    </section>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">Operators:</h1>

            <div class="contents">
                <variables-table targets={targets.variables}
                                 link-prefix={location.hash}></variables-table>
            </div>
        </div>
    </section>

    <script>
     this.hearts = [
         { code: ':aon',     name: 'aon',     core: "#'heart-core"},
         { code: ':da',      name: 'da',      core: "#'heart-core"},
         { code: ':tri',     name: 'tri',     core: "#'heart-core"},
         { code: ':ceithir', name: 'ceithir', core: "#'heart-core"},
         { code: ':coig',    name: 'coig',    core: "#'heart-core"},
         { code: ':sia',     name: 'sia',     core: "#'heart-core"},
         { code: ':seachd',  name: 'seachd',  core: "#'heart-core"},
         { code: ':ochd',    name: 'ochd',    core: "#'heart-core"},
     ];
     this.targets = {
         operators: [
             'find-hearts',
             'get-heart',
             'add-heart',
             'rm-heart',
             'start',
         ],
         variables: [
             '*hearts*',
         ],
     };
    </script>
</hearts_tab_management>
