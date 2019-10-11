<app-modals-add-4neo>

    <div class="modal is-active">
        <div class="modal-background" onclick={clickClose}></div>

        <div class="modal-card">
            <header class="modal-card-head">
                <p class="modal-card-title">Add 4neo</p>
                <button class="delete"
                        aria-label="close"
                        onclick={clickClose}></button>
            </header>

            <section class="modal-card-body">

                <div class="field">
                    <div class="control">
                        <input class="input"
                               type="text"
                               placeholder="Name"
                               ref="name">
                    </div>
                </div>

                <div class="field">
                    <div class="control">
                        <textarea class="textarea"
                                  placeholder="Description"
                                  ref="description"></textarea>
                    </div>
                </div>

            </section>

            <footer class="modal-card-foot" style="display: flex;justify-content: space-between;">
                <button class="button" onclick={clickClose}>Cancel</button>
                <button class="button is-success" onclick={clickAdd}>Add</button>
            </footer>
        </div>
    </div>

    <script>
     this.clickAdd = () => {
         let name = this.refs.name.value.trim();
         let description = this.refs.description.value.trim();

         ACTIONS.createFriends4neo({
             name: name,
             description: description,
         });
     };
     this.clickClose = () => {
         ACTIONS.closeModal('add-4neo')
     };
    </script>

</app-modals-add-4neo>
