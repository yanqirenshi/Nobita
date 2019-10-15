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
         },
         "columns": {
             "schedule": {
                 "code": "schedule",
                 "hide": true,
             },
             "result": {
                 "code": "result",
                 "hide": true,
             },
             "operators": {
                 "code": "operators",
                 "hide": true
             },
         },
         rows: {
             operators: {
                 pageLink: (d) => {
                     let type = d._core.type;
                     let id   = d._id;

                     if (type=='package')
                         return location.hash + '/packages/' + id;

                     if (type=='variable')
                         return location.hash + '/variables/' + id;

                     if (type=='class')
                         return location.hash + '/classes/' + id;

                     if (type=='operator')
                         return location.hash + '/operators/' + id;

                     return null;
                 },
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
