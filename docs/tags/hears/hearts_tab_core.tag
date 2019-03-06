<hearts_tab_core>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">心臓核のはたらき</h1>
            <h2 class="subtitle"></h2>

            <div class="contents">
                <p>定期的に鼓動します。</p>
                <p>鼓動することで情報を友情ネットワークに循環させます。</p>
                <p>「循環」とは、友情にある情報を友達に渡して友達の処理を実行することです。</p>
            </div>
        </div>
    </section>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">鼓動へのフック</h1>
            <h2 class="subtitle"></h2>

            <div class="contents">
                <p>鼓動には前後にフック関数あります。</p>
                <p>この関数を利用することである程度カスタマイズができると思います。</p>

                <hearts_callstacks></hearts_callstacks>
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
     this.targets = {
         operators: [
             'heart-core',
             '%heart-core',
             'heart-core-before',
             'heart-core-after',
         ],
         variables: [
             '*hook-heart-core-before*',
             '*hook-heart-core-after*',
         ],
     };
    </script>

</hearts_tab_core>
