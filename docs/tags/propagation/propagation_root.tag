<propagation_root>
    <section-header title="NOBIT@: ropagation"></section-header>

    <page-tab-with-section core={page_tabs} callback={clickTab}></page-tab-with-section>

    <div>
        <propagation_tab_readme     class="hide"></propagation_tab_readme>
        <propagation_tab_dictionary class="hide"></propagation_tab_dictionary>
    </div>

    <section-footer></section-footer>

    <script>
     this.page_tabs = new PageTabs([
         {code: 'readme',     label: 'README',     tag: 'propagation_tab_readme' },
         {code: 'dictionary', label: 'Dictionary', tag: 'propagation_tab_dictionary' },
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

</propagation_root>
