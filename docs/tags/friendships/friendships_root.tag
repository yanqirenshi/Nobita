<friendships_root>
    <section-header title="NOBIT@: 友情"></section-header>

    <page-tab-with-section core={page_tabs} callback={clickTab}></page-tab-with-section>

    <div>
        <friendships_tab_readme     class="hide"></friendships_tab_readme>
        <friendships_tab_dictionary class="hide"></friendships_tab_dictionary>
    </div>

    <section-footer></section-footer>

    <script>
     this.page_tabs = new PageTabs([
         {code: 'readme',     label: 'README',     tag: 'friendships_tab_readme' },
         {code: 'dictionary', label: 'Dictionary', tag: 'friendships_tab_dictionary' },
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

</friendships_root>
