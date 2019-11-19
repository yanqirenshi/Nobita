<page-future-tool-create>

    <section-header-with-breadcrumb title="Create Future Item"></section-header-with-breadcrumb>

    <section class="section">
        <div class="container">

            <page-future-tool-create-basic-info source={childrenSource()}
                                                callback={callback}></page-future-tool-create-basic-info>

            <page-future-tool-create-call-operator source={childrenSource()}
                                                   callback={callback}></page-future-tool-create-call-operator>

            <section class="section">
                <div class="container">
                    <button class="button is-danger"
                            disabled={!canCreateP()}
                            onclick={clickCreate}>Create</button>
                </div>
            </section>

        </div>
    </section>

    <script>
     this.source = {
         name: '',
         description: '',
         'dra@mon': null,
         packages: [],
         operators: [],
         selected_package: null,
         selected_operator: null,
     };
     this.callback = (action, data) => {
         if (action=='change-name') {
             this.source.name = (data || '');
             this.update();

             return;
         }

         if (action=='change-description') {
             this.source.description = (data || '');
             this.update();

             return;
         }
     };
     this.clickCreate = () => {
         ACTIONS.addDoraamonFutureItem(
             this.source['dra@mon'],
             {
                 name: this.source.name,
                 description: this.source.description,
                 operator: this.source.selected_operator,
             });
     };
    </script>

    <script>
     this.canCreateP = () => {
         if (this.source.name.trim()=="")
             return false;

         if (!this.source.selected_package ||
             !this.source.selected_operator)
             return false;

         return true;
     }
     this.childrenSource = () => {
         return this.source;
     };
     STORE.subscribe((action) => {
         if (action.type=='FETCHED-PAGES-DORAAMON-FUTURE-TOOL-CREATE') {
             this.source['dra@mon']   = action.response['dra@mon'];
             this.source['packages']  = action.response['packages'];
             this.source['operators'] = action.response['operators'];

             this.update();

             return;
         }

         if (action.type=='MODAL-SELECTED-PACKAGE') {
             ACTIONS.closeModal('select-cl-package')

             this.source.selected_package = action.package;

             this.update();

             this.fetchPageData(this.source.selected_package);

             return;
         }

         if (action.type=='MODAL-SELECTED-OPERATOR') {
             ACTIONS.closeModal('select-cl-operator')

             this.source.selected_operator = action.operator;

             this.update();

             return;
         }
     });
     this.fetchPageData = (pkg) => {
         let doraamon_id = this.opts._route.params.path['dora@mon'];

         ACTIONS.fetchPagesDoraamonFutureToolCreate(doraamon_id, pkg);
     };
     this.on('mount', () => {
         this.fetchPageData();
     });
    </script>

</page-future-tool-create>
