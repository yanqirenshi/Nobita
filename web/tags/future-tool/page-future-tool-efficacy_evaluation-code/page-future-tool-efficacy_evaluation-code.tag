<page-future-tool-efficacy_evaluation-code>

    <div class="flex-root">
        <page-future-tool-efficacy_evaluation-code-controller mode={mode}
                                                              callback={clickSwitchItem}></page-future-tool-efficacy_evaluation-code-controller>

        <div class="contents-area {mode}"
             style="flex-grow:1; display:flex; flex-direction:column;">
            <page-future-tool-efficacy_evaluation-code-view source={childrenSource()}></page-future-tool-efficacy_evaluation-code-view>
            <page-future-tool-efficacy_evaluation-code-edit source={childrenSource()}></page-future-tool-efficacy_evaluation-code-edit>
        </div>
    </div>

    <script>
     this.mode = 'view';
     this.clickSwitchItem = (mode) => {
         this.mode = mode;

         this.update();
     };
    </script>

    <script>
     this.childrenSource = () => {
         return this.source;
     };
    </script>

    <style>
     page-future-tool-efficacy_evaluation-code > div.flex-root {
         display:flex;
         border: 1px solid #eeeeee;
     }
     page-future-tool-efficacy_evaluation-code > div.flex-root > .controller-area > * {
         padding: 22px;
         border-bottom: 1px solid #eeeeee;
     }
     page-future-tool-efficacy_evaluation-code > div.flex-root > .controller-area > *:last-child {
         border-bottom: none;
         border-right: 1px solid #eeeeee;
         flex-grow: 1;
     }
     page-future-tool-efficacy_evaluation-code > div.flex-root > .contents-area {
         flex-grow:1;

         display: flex;
         flex-direction: column;
     }
     page-future-tool-efficacy_evaluation-code > div.flex-root > .contents-area.view > page-future-tool-efficacy_evaluation-code-edit {
         display: none;
     }
     page-future-tool-efficacy_evaluation-code > div.flex-root > .contents-area.edit > page-future-tool-efficacy_evaluation-code-view {
         display: none;
     }
    </style>

</page-future-tool-efficacy_evaluation-code>
