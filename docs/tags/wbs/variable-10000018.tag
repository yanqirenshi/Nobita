<variable-10000018>

    <home-wbs-header></home-wbs-header>

    <page-tab-with-section core={page_tabs} callback={clickTab}></page-tab-with-section>

    <div class="tab-contents-area">
        <variable-10000018-readme class="hide"></variable-10000018-readme>
        <home-wbs-structure    class="hide"></home-wbs-structure>
    </div>

    <section-footer></section-footer>

    <script>
     this.page_tabs = new PageTabs([
         {code: 'readme',       label: 'README', tag: 'variable-10000018-readme' },
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

</variable-10000018>
