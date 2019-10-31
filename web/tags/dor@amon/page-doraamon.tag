<page-doraamon>

    <section-header-with-breadcrumb title="Dora @ mon"></section-header-with-breadcrumb>

    <section class="section">
        <div class="container">
            <h1 class="title"></h1>
            <h2 class="subtitle"></h2>

            <page-doraamon-name source={source}></page-doraamon-name>

            <page-doraamon-description source={source}></page-doraamon-description>
        </div>
    </section>

    <section class="section" style="padding-top:0px;">
        <div class="container">
            <h1 class="title">Future Items</h1>
            <h2 class="subtitle">
                <button class="button">Create</button>
            </h2>

            <page-doraamon_card-future-items source={futureItems()}></page-doraamon_card-future-items>
        </div>
    </section>

    <script>
     this.futureItems = () => {
         return this.source ? this.source['4d-pocket'] : [];
     };
    </script>

    <script>
     this.source = null;
     STORE.subscribe((action) => {
         if (action.type=='FETCHED-PAGES-DORA@MON') {
             this.source = action.response;
             this.update();

             return;
         }
     });
     this.on('mount', () => {
         let id = location.hash.split('/').reverse()[0] * 1;

         ACTIONS.fetchPagesDoraamon(id);
     });
    </script>

</page-doraamon>
