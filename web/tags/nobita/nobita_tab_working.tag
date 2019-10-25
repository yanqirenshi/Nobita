<nobita_tab_working class="tab-page">

    <section class="section">
        <div class="container">
            <h1 class="title"></h1>
            <h2 class="subtitle"></h2>

            <div class="contents">

                <div each={obj in source()} class="nobita-action-card">
                    <p>Name: <span>{obj.name}</span></p>
                    <p>Alive: <span>{obj['alive-p']}</span></p>
                </div>

            </div>

        </div>
    </section>

    <script>
     this.source = () => {
         return this.opts.source['actions'] || [];
     };
    </script>

    <style>
     nobita_tab_working .nobita-action-card {
         display: flex;
         padding: 22px;
         border: 1px solid #eeeeee;
         border-radius: 5px;
         margin-bottom: 11px;
         box-shadow: 0px 0px 8px #cccccc
     }
     nobita_tab_working .nobita-action-card > * {
         margin-left: 22px;
     }
     nobita_tab_working .nobita-action-card > p > span {
         font-weight:bold;
     }
     nobita_tab_working .nobita-action-card > *:first-child {
         margin-left: 0px;
     }
    </style>

</nobita_tab_working>
