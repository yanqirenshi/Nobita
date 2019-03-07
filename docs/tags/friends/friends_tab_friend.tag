<friends_tab_friend>

    <section class="section">
        <div class="container">
            <h1 class="title is-4"></h1>
            <h2 class="subtitle"></h2>

            <div class="contents">
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
            <h1 class="title is-4">Variables:</h1>

            <div class="contents">
                <variables-table targets={targets.variables}
                                 link-prefix={location.hash}></variables-table>
            </div>
        </div>
    </section>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">Classes:</h1>

            <div class="contents">
                <classes-table targets={targets.classes}
                               link-prefix={location.hash}></classes-table>
            </div>
        </div>
    </section>

    <script>
     this.targets = {
         operators: [
             'tx-save-location',
         ],
         variables: [
         ],
         classes:   [
             'node',
             'friend',
         ],
     };
    </script>

</friends_tab_friend>
