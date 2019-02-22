<hearts_root>
    <section-header title="NOBIT@: G×an's 心臓"></section-header>

    <page-tabs core={page_tabs} callback={clickTab}></page-tabs>

    <div>
        <hearts_tab_readme     class="hide"></hearts_tab_readme>
        <hearts_tab_dictionary class="hide"></hearts_tab_dictionary>
    </div>

    <section-footer></section-footer>

    <script>
     this.page_tabs = new PageTabs([
         {code: 'readme',     label: 'README',     tag: 'hearts_tab_readme' },
         {code: 'dictionary', label: 'Dictionary', tag: 'hearts_tab_dictionary' },
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

</hearts_root>
