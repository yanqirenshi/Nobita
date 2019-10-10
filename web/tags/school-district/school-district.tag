<school-district>
    <network-graph callback={callbackGraph}></network-graph>

    <school-district_inspector source={inspectorSource()}></school-district_inspector>

    <school-district-controller></school-district-controller>

    <script>
     this.inspectorSource = () => {
         let state = STORE.state().get('school');

         return state.district.select.node;
     };

     STORE.subscribe((action) => {
         if (action.type=='SELECTED-SCHOOL-DISTRICT-GRAPH-NODE')
             if (this.tags['school-district_inspector'])
                 this.tags['school-district_inspector'].update();

         if (action.type=='CLEARED-SELECT-SCHOOL-DISTRICT')
             if (this.tags['school-district_inspector'])
                 this.tags['school-district_inspector'].update();
     });
    </script>
</school-district>
