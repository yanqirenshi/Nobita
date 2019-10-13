<class-10000037>

    <home-wbs-header></home-wbs-header>

    <page-tab-with-section core={page_tabs} callback={clickTab}></page-tab-with-section>

    <div class="tab-contents-area">
        <class-10000037-readme class="hide"></class-10000037-readme>
        <home-wbs-structure    class="hide"></home-wbs-structure>
    </div>

    <section-footer></section-footer>

    <script>
     this.page_tabs = new PageTabs([
         {code: 'readme',       label: 'README', tag: 'class-10000037-readme' },
         {code: 'installation', label: 'Wnqi',   tag: 'home-wbs-structure' },
     ]);

     this.on('mount', () => {
         this.page_tabs.switchTab(this.tags)
         this.update();
     });

     this.clickTab = (e, action, data) => {
         if (this.page_tabs.switchTab(this.tags, data.code))
             this.update();
     };
    </script>

</class-10000037>
