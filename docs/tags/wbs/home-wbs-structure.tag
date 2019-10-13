<home-wbs-structure>

    <section class="section">
        <div class="container">
            <h1 class="title"></h1>
            <h2 class="subtitle"></h2>

            <div class="contents" style="padding-left:0px;">
                <home-wnqi start_id={gtID()}></home-wnqi>
            </div>
        </div>
    </section>

    <script>
     this.gtID = () => {
         return location.hash.split('/').reverse()[0] * 1;
     }
    </script>

</home-wbs-structure>
