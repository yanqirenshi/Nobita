<school-district-karma>

    <section class="hero">
        <div class="hero-body">
            <div class="container">
                <h1 class="title">校区(学区)のカルマ、略して学業</h1>
                <h2 class="subtitle"></h2>

                <div class="contents">
                    <p>利用するパッケージを制限したり、利用できるオペーレータを制限したり。</p>
                    <p>基本ホワイトリスト管理になると思います。</p>
                </div>

            </div>
        </div>
    </section>

    <section class="section">
        <div class="container">
            <h1 class="title">Packages</h1>
            <h2 class="subtitle"></h2>

            <section class="section">
                <div class="container">
                    <h1 class="title is-4">White List</h1>
                    <h2 class="subtitle"></h2>
                </div>
            </section>

            <section class="section">
                <div class="container">
                    <h1 class="title is-4">Others</h1>
                    <h2 class="subtitle"></h2>

                    <div class="contents">
                        <div style="display:flex; padding: 11px 22px;">
                            <input class="input"
                                   type="text"
                                   placeholder="Filter"
                                   onkeyup={keyUp}
                                   ref="filter-pattern">
                            <button class="button">Clear</button>
                        </div>

                        <div style="display:flex;flex-wrap: wrap; padding:22px;">
                            <button each={obj in list()}
                                    class="button"
                                    style="margin-bottom: 11px; margin-left:11px;">{obj.name}</button>
                        </div>
                    </div>

                </div>
            </section>

        </div>
    </section>

    <script>
     this.keyUp = (e) => {
         this.update();
     };
     this.list = () => {
         let str = this.refs['filter-pattern'].value.toUpperCase();
         let list = this.source.packages || [];

         return list.filter((d) => {
             return d.name.indexOf(str)==-1 ? false : true;
         }).sort((a, b) => {
             return a.name < b.name ? -1 : 1;
         });
     };
     this.on('mount', () => {
         ACTIONS.fetchPagesSchoolDistrictKarma();
     });
     this.source = [];
     STORE.subscribe((action) => {
         if (action.type=='FETCHED-PAGES-SCHOOL-DISTRICT-KARMA') {
             this.source = action.response;

             this.update()

             return;
         }
     });
    </script>

</school-district-karma>
