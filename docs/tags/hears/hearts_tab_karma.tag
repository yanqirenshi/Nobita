<hearts_tab_karma>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">概要</h1>
            <h2 class="subtitle"></h2>

            <div class="contents">
                <p>心臓が友情をドライブするための原動力です。</p>
            </div>
        </div>
    </section>

    <!-- ---------------------------------------------------------------- -->
    <!-- ----START------------------------------------------------------- -->
    <!-- ---------------------------------------------------------------- -->
    <section class="section">
        <div class="container">
            <h1 class="title is-4">データ構造</h1>
            <h2 class="subtitle"></h2>

            <div class="contents">
                <p>Pist です。</p>
                <p><code>make-karma</code> で作成しています。</p>

                <karma-data-structure-table></karma-data-structure-table>
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
    <!-- ---------------------------------------------------------------- -->
    <!-- ----END--------------------------------------------------------- -->
    <!-- ---------------------------------------------------------------- -->

    <script>
     this.targets = {
         operators: [
             'make-karma',
             'make-karma-pool',
             'push-karma',
             'pop-karma',
             'qsize',
             'karma-pool',
             'find-karmas',
             'rm-karma-at-idea-id',
         ],
         classes: [
             'karma-pool',
         ],
     };
    </script>
</hearts_tab_karma>
