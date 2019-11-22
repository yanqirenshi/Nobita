<page-future-tool>

    <section-header-with-breadcrumb title="Future Item"></section-header-with-breadcrumb>

    <section class="section" style="padding-top: 22px;">
        <div class="container">

            <div>
                <name-area source={futureToolName()}
                           callback={callback}
                           succes_action="SAVED-FUTURE-ITEM-NAME"></name-area>
            </div>

            <div style="margin-top:22px;">
                <page-tab-with-section core={page_tabs}
                                       callback={clickTab}></page-tab-with-section>

                <div class="tab-contents-area">
                    <page-future-tool-efficacy class="hide" source={childrenSource()}></page-future-tool-efficacy>
                    <page-future-tool-basic    class="hide" source={childrenSource()}></page-future-tool-basic>
                    <page-future-tool-owner    class="hide" source={childrenSource()}></page-future-tool-owner>
                    <page-future-tool-users    class="hide" source={childrenSource()}></page-future-tool-users>
                </div>
            </div>

        </div>
    </section>

    <script>
     this.callback = (action, data) => {
         if (action=='click-save-name') {
             ACTIONS.saveFutureItemName(this.source.future_item, data);

             return;
         }
     };
     this.futureToolName = () => {
         if (!this.source.future_item)
             return '';

         return this.source.future_item.name;
     }
    </script>

    <script>
     this.page_tabs = new PageTabs([
         {code: 'efficacy', label: 'Efficacy',   tag: 'page-future-tool-efficacy' },
         {code: 'basic',    label: 'Basic Info', tag: 'page-future-tool-basic' },
         {code: 'owner',    label: 'Owner',      tag: 'page-future-tool-owner' },
         {code: 'users',    label: 'Users',      tag: 'page-future-tool-users' },
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
     this.childrenSource = () => {
         return this.source;
     };
    </script>

    <script>
     this.edit = false;
     this.source = {
         'dora@mon': null,
         future_item: null,
         users: [],
     };
     STORE.subscribe((action) => {
         if (action.type=='FETCHED-PAGES-FUTURE-TOOL') {
             this.source = action.response;
             this.update();

             return;
         }
         if (action.type=='SAVED-FUTURE-ITEM-NAME') {
             this.loadPageData();

             return;
         }

     });
     this.on('mount', () => {
         this.loadPageData();
     });
     this.loadPageData = () => {
         let id = location.hash.split('/').reverse()[0] * 1;

         ACTIONS.fetchPagesFutureTool(id);
     };
    </script>

</page-future-tool>
