<friends_root>
    <section-header title="NOBIT@: 友達"></section-header>

    <page-tab-with-section core={page_tabs} callback={clickTab}></page-tab-with-section>

    <div>
        <friends_tab_readme     class="hide"></friends_tab_readme>
        <friends_tab_friend     class="hide"></friends_tab_friend>
        <friends_tab_g-an       class="hide"></friends_tab_g-an>
        <friends_tab_4neo       class="hide"></friends_tab_4neo>
        <friends_tab_nobita     class="hide"></friends_tab_nobita>
        <friends_tab_dictionary class="hide"></friends_tab_dictionary>
    </div>

    <section-footer></section-footer>

    <script>
     this.page_tabs = new PageTabs([
         {code: 'readme',     label: 'README',     tag: 'friends_tab_readme' },
         {code: 'friend',     label: 'Friend',     tag: 'friends_tab_friend' },
         {code: 'g-an',       label: 'G * An',     tag: 'friends_tab_g-an' },
         {code: '4neo',       label: '4Neo',       tag: 'friends_tab_4neo' },
         {code: 'nobita',     label: 'NoBit@',     tag: 'friends_tab_nobita' },
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
