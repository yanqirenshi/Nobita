<hearts_sec_root>
    <section class="hero">
        <div class="hero-body">
            <div class="container">
                <h1 class="title">心臓</h1>
                <h2 class="subtitle"></h2>

            </div>
        </div>
    </section>

    <section class="section">
        <div class="container">
            <h1 class="title">一覧</h1>
            <h2 class="subtitle"></h2>

            <div class="contents">
                <table class="table is-bordered is-striped is-narrow is-hoverable">
                    <thead>
                        <tr>
                            <th rowspan="2">Name</th>
                            <th rowspan="2">Bpm</th>
                            <th rowspan="2">Times</th>
                            <th rowspan="1">Queue</th>
                        </tr>
                        <tr>
                            <th>Size</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr each={heart in hearts()}>
                            <td>{heart.name}</td>
                            <td>{heart.bpm}</td>
                            <td>{heart.times}</td>
                            <td>{heart.queue.SIZE}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>

    <script>
     this.hearts = () => {
         let store = STORE.state().toJS().hearts;
         return store ? store : [];
     }
     this.on('mount', () => {
         ACTIONS.fetchHearts();
     });
     STORE.subscribe((action) => {
         if (action.type=='FETCHED-HEARTS')
             this.update();
     });
    </script>

    <style>
     hearts_sec_root {
         display: block;
         margin-left: 55px;
     }
    </style>
</hearts_sec_root>
