<nobita_tab_action>

    <section class="section">
        <div class="container">
            <div class="contents">
                <button class="button" onclick={clickDetail}>
                    詳細
                </button>
            </div>
        </div>
    </section>

    <script>
     this.clickDetail = () => {
         location.hash = location.hash + '/action';
     };
    </script>
</nobita_tab_action>
