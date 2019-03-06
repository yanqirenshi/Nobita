<hearts_tab_heart>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">心臓のはたらき</h1>
            <h2 class="subtitle"></h2>

            <div class="contents">
                <p>心臓は鼓動します。</p>
                <p>bpm で beat を tick します。</p>
            </div>
        </div>
    </section>

    <!-- ---------------------------------------------------------------- -->
    <!-- ----START------------------------------------------------------- -->
    <!-- ---------------------------------------------------------------- -->

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
             'tick!',
             'make-heart',
             'start-heart',
             'stop-heart',
         ],
         classes: [
             'nobiheart',
         ],
     };
    </script>
</hearts_tab_heart>
