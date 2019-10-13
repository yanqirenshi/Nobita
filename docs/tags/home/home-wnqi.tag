<home-wnqi>

    <wbs-tree-list data={data()}
                   options={wbs_list_options}></wbs-tree-list>

    <script>
     this.wbs_list_options = {
         hide: {
             wbs: {
                 finished: false
             },
             workpackage: {
                 finished: false
             },
         }
     };
     this.data = () => {
         let state = new WNQI().build();
         let options = this.wbs_list_options;

         if (state.projects.list.length==0)
             return [];

         let id = this.opts.start_id;
         return new Wbs().composeTreeFlat(
             state.wbs.ht[id],
             state.wbs,
             state.workpackages,
             state.edges,
             options);
     };
    </script>

</home-wnqi>
