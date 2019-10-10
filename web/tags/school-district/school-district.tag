<school-district>
    <network-graph source={source}
                   callback={callbackGraph}></network-graph>

    <school-district_inspector source={inspectorSource()}></school-district_inspector>

    <school-district-controller></school-district-controller>

    <script>
     this.inspectorSource = () => {
         let state = STORE.state().get('school');

         return state.district.select.node;
     };

     STORE.subscribe((action) => {
         if (action.type=='SELECTED-SCHOOL-DISTRICT-GRAPH-NODE') {
             if (this.tags['school-district_inspector'])
                 this.tags['school-district_inspector'].update();
             return;
         }

         if (action.type=='CLEARED-SELECT-SCHOOL-DISTRICT') {
             if (this.tags['school-district_inspector'])
                 this.tags['school-district_inspector'].update();
             return;
         }

         if (action.type=='CREATED-FRIENDS-GxAN') {
             ACTIONS.closeModal('add-gxan')

             ACTIONS.fetchPagesSchoolDistrict();

             return;
         }
         if (action.type=='FETCHED-PAGES-SCHOOL-DISTRICT') {
             this.source = action.response;

             this.update();

             return;
         }
     });
    </script>

    <script>
     this.source = {
         nodes:  { list:[], ht:{} },
         edges:  { list:[], ht:{} },
         hearts: { list:[], ht:{} },
     };
     this.on('mount', () => {
         ACTIONS.fetchPagesSchoolDistrict();
     });
    </script>
</school-district>
