<nobita_tab_action class="tab-page">

    <section class="section" style="padding-top:11px;">
        <div class="container">

            <section class="section">
                <div class="container">
                    <h1 class="title is-4">Type</h1>
                    <h2 class="subtitle"></h2>

                    <div class="contents">
                        {type()}
                    </div>
                </div>
            </section>

            <section class="section">
                <div class="container">
                    <h1 class="title is-4">Contents</h1>
                    <h2 class="subtitle"></h2>

                    <div class="contents">
                        {contents()}
                    </div>
                </div>
            </section>

            <section class="section">
                <div class="container">
                    <h1 class="title is-4">Description</h1>
                    <h2 class="subtitle">{description()}</h2>

                    <div class="contents">
                        {description()}
                    </div>
                </div>
            </section>

            <div class="contents">
                <button class="button" onclick={clickDetail}>
                    詳細
                </button>
            </div>

        </div>
    </section>

    <script>
     this.action = () => {

         return this.opts.source ? this.opts.source.action : null;
     };
     this.type = () => {
         let source = this.action();

         return source ? source.type : '????????';
     };
     this.contents = () => {
         let source = this.action();
         let contents = source.contents;

         if (source.type=="CALL-OPERATOR")
             return contents.symbol;

         return source ? source.contents : '????????';
     };
     this.description = () => {
         let source = this.action();

         return source ? source.description : '????????';
     };
    </script>

    <script>
     this.clickDetail = () => {
         location.hash = location.hash + '/action';
     };
    </script>

</nobita_tab_action>
