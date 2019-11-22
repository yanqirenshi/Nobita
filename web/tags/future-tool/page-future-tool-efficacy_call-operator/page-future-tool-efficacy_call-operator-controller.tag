<page-future-tool-efficacy_call-operator-controller>

    <div class={active('view')} mode="view" onclick={clickSwitchItem}>View</div>
    <div class={active('edit')} mode="edit" onclick={clickSwitchItem}>Edit</div>
    <div class="spacer"></div>

    <script>
     this.active = (key) => {
         return (key == this.opts.mode) ? 'active' : '';
     }
     this.clickSwitchItem = (e) => {
         let mode = e.target.getAttribute('mode');

         this.opts.callback(mode);
     };
    </script>

    <style>
     page-future-tool-efficacy_call-operator-controller {
         flex-direction: column;
         display: flex;
     }
     page-future-tool-efficacy_call-operator-controller > * {
         padding: 22px;
         border-bottom: 1px solid #eeeeee;
         border-right: 1px solid #eeeeee;
     }
     page-future-tool-efficacy_call-operator-controller > *:last-child {
         border-bottom: none;
         flex-grow: 1;
     }
     page-future-tool-efficacy_call-operator-controller > *.active {
         border-right: none;
         font-weight: bold;
     }
    </style>

</page-future-tool-efficacy_call-operator-controller>
