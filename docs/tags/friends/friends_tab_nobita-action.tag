<friends_tab_nobita-action>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">NoBit@アクション の作法</h1>
            <h2 class="subtitle"></h2>

            <div class="contents">
                <p><code>action!</code> で NoBit@ の action が実行されます。</p>
            </div>

            <section class="section">
                <div class="container">
                    <h1 class="title is-5">NoBit@ の action の引数</h1>
                    <h2 class="subtitle"></h2>

                    <div class="contents">
                        <p> NoBit@ の action には以下の情報がキーワード引数として渡されます。</p>
                        <ol>
                            <li>:graph</li>
                            <li>:idea</li>
                            <li>:nobit@</li>
                            <li>:source</li>
                        </ol>
                    </div>
                </div>
            </section>

            <section class="section">
                <div class="container">
                    <h1 class="title is-5">NoBit@ の action の戻り値</h1>
                    <h2 class="subtitle"></h2>

                    <div class="contents">
                        <p>NoBit@ の action の戻り値は、新しく作成された idea の :contents にセットされます。</p>
                        <p>戻値 がセットされた idea は後続の処理に流されて行きます。</p>
                        <p>NoBit@ の action がエラーとなった場合は、そのコンディションが idea の :contents にセットされます。</p>
                    </div>
                </div>
            </section>

        </div>
    </section>

</friends_tab_nobita-action>
