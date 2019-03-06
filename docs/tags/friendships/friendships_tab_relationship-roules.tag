<friendships_tab_relationship-roules>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">概要</h1>
            <h2 class="subtitle"></h2>

            <div class="contents">
                <p>友情にも掟があります。</p>
                <p>網状のように見えても、部分で見ると階層のようにも見えるものなのです。</p>
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

    <script>
     this.targets = {
         operators: [
             'assert-frendship-1-1',
             'assert-frendship-1-n',
             'assert-frendship',
         ],
     };
    </script>

</friendships_tab_relationship-roules>
