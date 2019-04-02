<nobita>
    <section-header-with-breadcrumb title="Nobit@"></section-header-with-breadcrumb>

    <div>
        <div style="margin-top:33px;"></div>

        <page-tab-with-section core={page_tabs}
                               callback={clickTab}></page-tab-with-section>

        <div class="tab-contents-area">
            <nobita_tab_basic   class="hide"></nobita_tab_basic>
            <nobita_tab_action  class="hide"></nobita_tab_action>
            <nobita_tab_working class="hide"></nobita_tab_working>
        </div>
    </div>

    <script>
     this.page_tabs = new PageTabs([
         {code: 'basic',   label: 'Basic',   tag: 'nobita_tab_basic' },
         {code: 'action',  label: 'Action',  tag: 'nobita_tab_action' },
         {code: 'working', label: 'Working', tag: 'nobita_tab_working' },
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

    <script>
     // this.opts._route.params.path.id
    </script>
</nobita>
