<app-modals-add-nobita-contents>

    <div style="display: flex; flex-direction: column;">

        <div>
            <div class="field">
                <div class="control">
                    <input class="input" type="text" placeholder="Name">
                </div>
            </div>

        </div>

        <div style="display: flex; margin-top: 22px;">
            <div style="width:auto; margin-right:22px;">

                <div class="control" style="margin-bottom: 22px;">
                    <app-modals-add-nobita-contents-select-action-type source={contents_types}
                                                                       callbacks={childrenCallbaks}></app-modals-add-nobita-contents-select-action-type>
                </div>

                <app-modals-add-nobita-contents-default class={isHide(null)}></app-modals-add-nobita-contents-default>
                <app-modals-add-nobita-contents-fn      class={isHide('fn')}></app-modals-add-nobita-contents-fn>
                <app-modals-add-nobita-contents-cl      class={isHide('cl')}></app-modals-add-nobita-contents-cl>
            </div>

            <div style="width:333px; flex-grow:1;">
                <div class="field" style="height:100%;">
                    <div class="control" style="height:100%;">
                        <textarea class="textarea"
                                  placeholder="Description"
                                  style="height:100%;"></textarea>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <script>
     this.contents_types = [
         { code: 'fn', label: 'Submit Lisp Code' },
         { code: 'cl', label: 'Call Function' },
     ];

     this.selected = null
     this.childrenCallbaks = (action, data) => {
         if (action=="selected-action-type") {
             this.selected = data;
             this.update();
             return;
         }
     };
     this.isHide = (key) => {
         return key == this.selected ? '' : 'hide';
     };
    </script>

</app-modals-add-nobita-contents>
