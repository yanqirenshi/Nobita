<friendships_tab_idea>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">概要</h1>
            <h2 class="subtitle"></h2>

            <div class="contents">
                <p>友情のネットワークを駆け巡るのはアイデアです。</p>
                <p>最初は小さなアイデアも、友情のネットワークを経ることで大きく、多きく、強く、格好良くなるものです。</p>
            </div>
        </div>
    </section>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">データ構造</h1>
            <h2 class="subtitle"></h2>

            <div class="contents">
                <p>こんな構造をしています。</p>
                <idea-data-structure-table></idea-data-structure-table>
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

    <script>
     this.targets = {
         operators: ['make-idea'],
         variables: ['*idea-id-counter*'],
     };
    </script>

</friendships_tab_idea>
