<page-future-tool>

    <section-header-with-breadcrumb title="Future Item"></section-header-with-breadcrumb>

    <page-future-tool-viewer if={!edit}></page-future-tool-viewer>
    <page-future-tool-editor if={edit}></page-future-tool-editor>

    <script>
     this.edit = false;
     this.source = null;
     STORE.subscribe((action) => {
         if (action.type=='FETCHED-PAGES-FUTURE-TOOL') {
             this.source = action.response;
             this.update();

             return;
         }
     });
     this.on('mount', () => {
         let id = location.hash.split('/').reverse()[0] * 1;

         ACTIONS.fetchedPagesFutureTool(id);
     });
    </script>

</page-future-tool>
