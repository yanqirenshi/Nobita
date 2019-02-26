<school-district_sec_root>
    <network-graph callback={callbackGraph}></network-graph>

    <school-district_inspector source={inspectorSource()}></school-district_inspector>

    <script>
     this.inspectorSource = () => {
         let state = STORE.state().get('school');
         return state.district.select.node;
     };

     STORE.subscribe((action) => {
         if (action.type=='SELECTED-SCHOOL-DISTRICT-GRAPH-NODE')
             this.tags['school-district_inspector'].update();;

         if (action.type=='CLEARED-SELECT-SCHOOL-DISTRICT')
             this.tags['school-district_inspector'].update();
     });
    </script>
</school-district_sec_root>
