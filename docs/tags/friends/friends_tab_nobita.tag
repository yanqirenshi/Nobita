<friends_tab_nobita>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">概要</h1>
            <h2 class="subtitle"></h2>

            <div class="contents">
            </div>
        </div>
    </section>

    <friends_tab_nobita-action></friends_tab_nobita-action>

    <operators-table-section targets={targets}></operators-table-section>
    <variables-table-section targets={targets}></variables-table-section>
    <classes-table-section targets={targets}></classes-table-section>

    <script>
     this.targets = {
         operators: [
             'action!',
             'find-nobit@',
             'get-nobit@',
             'tx-make-nobit@',
         ],
         variables: [
         ],
         classes:   [
             'nobit@',
         ],
     };
    </script>

</friends_tab_nobita>
