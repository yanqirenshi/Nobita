<friendships_tab_idea>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">概要</h1>
            <h2 class="subtitle"></h2>

            <div class="contents">
                <p>友情のネットワークを駆け巡るのはアイデアです。</p>
                <p>最初は小さなアイデアも、友情のネットワークを経ることで大きく、多きく、強く、格好良くなるものです。</p>
            </div>

            <section class="section">
                <div class="container">
                    <h1 class="title is-4">NoBit@ との受け/渡し</h1>
                    <h2 class="subtitle"></h2>

                    <div class="contents">
                        <p>現在は idea をそのまま渡しています。</p>
                        <p>そして、 NoBit@ は必ず idea を返す必要があります。</p>
                        <p>このやり方は良くないと思っています。</p>
                        <p>idea の _id と contents を NoBit@ に渡し、NoBit@ が返した値を Result に入れるべきと考えます。</p>
                    </div>
                </div>
            </section>
        </div>
    </section>

    <friendships_tab_idea-data-structure></friendships_tab_idea-data-structure>

    <operators-table-section targets={targets}></operators-table-section>
    <variables-table-section targets={targets}></variables-table-section>

    <script>
     this.targets = {
         operators: ['make-idea'],
         variables: ['*idea-id-counter*'],
     };
    </script>

</friendships_tab_idea>
