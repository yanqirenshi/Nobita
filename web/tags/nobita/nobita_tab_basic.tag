<nobita_tab_basic class="tab-page">

    <section class="section">
        <div class="container">

            <section class="section">
                <div class="container">
                    <h1 class="title is-4">ID</h1>
                    <h2 class="subtitle"></h2>

                    <div class="contents">{id()}</div>
                </div>
            </section>

            <section class="section">
                <div class="container">
                    <h1 class="title is-4">Name</h1>
                    <h2 class="subtitle"></h2>

                    <div class="contents">{name()}</div>
                </div>
            </section>

            <section class="section">
                <div class="container">
                    <h1 class="title is-4">Workings</h1>
                    <h2 class="subtitle"></h2>

                    <div class="contents">{workings()}</div>
                </div>
            </section>

            <section class="section">
                <div class="container">
                    <h1 class="title is-4">Description</h1>
                    <h2 class="subtitle"></h2>

                    <div class="contents">{description()}</div>
                </div>
            </section>

        </div>
    </section>

    <script>
     this.source = () => {
         return this.opts.source['nobit@'];
     };
     this.id = () => {
         let source = this.source();

         return source ? source._id : '????????';
     };
     this.name = () => {
         let source = this.source();

         return source ? source.name : '????????';
     };
     this.workings = () => {
         let source = this.source();

         return source ? source.workings : 0;
     };
     this.description = () => {
         let source = this.source();

         return source ? source.description : '????????';
     };
    </script>

</nobita_tab_basic>
