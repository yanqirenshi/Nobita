<friendships_tab_friendship>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">概要</h1>
            <h2 class="subtitle"></h2>

            <div class="contents">
                <p>友達と友達の関係を維持するためのものです。</p>
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
             'tx-make-frendship',
             '%tx-make-frendship',
             'find-frendship',
             'find-frendship-at-to-classes',
             'find-frendship-at-from',
             'find-frendship-at-to',
         ],
         classes:   [
             'edge',
             'friendship',
         ],
     };
    </script>

</friendships_tab_friendship>
