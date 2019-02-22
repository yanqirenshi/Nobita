<friends_root>
    <section-header title="NOBIT@: 友達"></section-header>

    <page-tabs core={page_tabs} callback={clickTab}></page-tabs>

    <div>
        <friends_tab_readme     class="hide"></friends_tab_readme>
        <friends_tab_dictionary class="hide"></friends_tab_dictionary>
    </div>

    <section-footer></section-footer>

    <script>
     this.page_tabs = new PageTabs([
         {code: 'readme',     label: 'README',     tag: 'friends_tab_readme' },
         {code: 'dictionary', label: 'Dictionary', tag: 'friends_tab_dictionary' },
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

</friends_root>
