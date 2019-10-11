<app-modals-add-friendship>

    <div class="modal is-active">
        <div class="modal-background" onclick={clickClose}></div>

        <div class="modal-card">
            <header class="modal-card-head">
                <p class="modal-card-title">Add Friendship</p>
                <button class="delete"
                        aria-label="close"
                        onclick={clickClose}></button>
            </header>

            <section class="modal-card-body">
                <app-modals-add-friendship-contents callbacks={childrenCallbacks}
                                                    source={form_data}></app-modals-add-friendship-contents>
            </section>

            <footer class="modal-card-foot" style="display: flex;justify-content: space-between;">
                <button class="button" onclick={clickClose}>Cancel</button>

                <button class="button is-success"
                        onclick={clickAdd} disabled={isDisabled()}>Add</button>
            </footer>
        </div>
    </div>

    <script>
     this.form_data = {
         from: null,
         to: null,
         description: "",
         heart: null,
     };
     this.clickAdd = () => {
         ACTIONS.createFriendship({
             from_id:     this.form_data.from._id,
             to_id:       this.form_data.to._id,
             description: this.form_data.description,
             heart_code:  this.form_data.heart.name,
         });
     };
     this.clickClose = () => {
         ACTIONS.closeModal('add-friendship')
     };
    </script>

    <script>
     this.childrenCallbacks = (action, data) => {
         if (action=='change-node') {
             this.form_data[data.type] = data.node;

             this.update();

             return;
         }
         if (action=='change-heart') {
             this.form_data.heart = data;

             this.update();

             return;
         }
         if (action=='change-description') {
             this.form_data.description = data || "";
             return;
         }
     };
     this.isDisabled = () => {
         let data = this.form_data;

         if (!data.heart)
             return true;

         let from_node = data.from;
         let to_node   = data.to;

         if (!from_node || !to_node)
             return true;

         if (from_node._id == to_node._id)
             return true;

         let from_node_class = data.from._class;
         let to_node_class   = data.to._class;

         if (from_node_class=='G*AN' && to_node_class=='4NEO')
             return false;

         if (from_node_class=='4NEO' && to_node_class=='NOBIT@')
             return false;

         if (from_node_class=='NOBIT@' && to_node_class=='NOBIT@')
             return false;

         if (from_node_class=='NOBIT@' && to_node_class=='4NEO')
             return false;

         if (from_node_class=='4NEO' && to_node_class=='G*AN')
             return false;

         return true;
     };
    </script>

</app-modals-add-friendship>
