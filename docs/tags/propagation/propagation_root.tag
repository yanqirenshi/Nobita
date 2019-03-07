<propagation_root>

    <section-header title="NOBIT@: ropagation"></section-header>

    <page-tab-with-section core={page_tabs} callback={clickTab}></page-tab-with-section>

    <div class="tab-contents-area">
        <propagation_tab_home             class="hide"></propagation_tab_home>
        <propagation_tab_from-friends     class="hide"></propagation_tab_from-friends>
        <propagation_tab_from-friendships class="hide"></propagation_tab_from-friendships>
        <propagation_tab_dictionary       class="hide"></propagation_tab_dictionary>
    </div>

    <section-footer></section-footer>

    <script>
     this.page_tabs = new PageTabs([
         {code: 'home',        label: 'Home',           tag: 'propagation_tab_home' },
         {code: 'friends',     label: '友達からの伝播', tag: 'propagation_tab_from-friends' },
         {code: 'friendships', label: '友情からの伝播', tag: 'propagation_tab_from-friendships' },
         {code: 'dictionary',  label: 'Dictionary',     tag: 'propagation_tab_dictionary' },
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
