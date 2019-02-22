<hearts_root>
    <section-header title="NOBIT@: Nobit@'s 心臓"></section-header>

    <page-tab-with-section core={page_tabs} callback={clickTab}></page-tab-with-section>

    <div>
        <hearts_tab_readme     class="hide"></hearts_tab_readme>
        <hearts_tab_core       class="hide"></hearts_tab_core>
        <hearts_tab_management class="hide"></hearts_tab_management>
        <hearts_tab_dictionary class="hide"></hearts_tab_dictionary>
    </div>

    <section-footer></section-footer>

    <script>
     this.page_tabs = new PageTabs([
         {code: 'readme',     label: 'README',     tag: 'hearts_tab_readme' },
         {code: 'core',       label: '心臓核',     tag: 'hearts_tab_core' },
         {code: 'management', label: '心臓の管理', tag: 'hearts_tab_management' },
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
