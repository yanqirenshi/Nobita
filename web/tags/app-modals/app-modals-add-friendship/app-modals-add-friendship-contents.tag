<app-modals-add-friendship-contents>

    <div style="display:flex;align-items: center;justify-content: center;">

        <div style="margin-bottom: 11px;">
            <div>
                <app-modals-add-friendship-contents-node label="Fron Node ID"
                                                         type="from"
                                                         callbacks={childrenCallbacks}></app-modals-add-friendship-contents-node>
            </div>
        </div>

        <div style="padding-left: 22px;padding-right: 22px;">
            <div style="text-align: center;">
                <p style="font-size: 66px;">
                    <i class="far fa-handshake"></i>
                </p>
            </div>
        </div>

        <div style="margin-bottom: 11px;">
            <div>
                <app-modals-add-friendship-contents-node label="To Node ID"
                                                         type="to"
                                                         callbacks={childrenCallbacks}></app-modals-add-friendship-contents-node>
            </div>
        </div>

    </div>

    <div>
        <app-modals-add-friendship-contents-hearts callbacks={childrenCallbacks}></app-modals-add-friendship-contents-hearts>
    </div>

    <div style="margin-top:22px;">
        <textarea class="textarea"
                  placeholder="Description"
                  onkeyup={keyUp}></textarea>
    </div>

    <script>
     this.keyUp = (e) => {
         let description = e.target.value;
         this.opts.callbacks('change-description', description);
     };
     this.childrenCallbacks = (action, data) => {
         if (action=='change-node' || action=='change-heart') {
             this.opts.callbacks(action, data);
             return
         }
     };
    </script>

</app-modals-add-friendship-contents>
