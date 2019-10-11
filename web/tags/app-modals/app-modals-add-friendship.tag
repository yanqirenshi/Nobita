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

            </section>

            <footer class="modal-card-foot" style="display: flex;justify-content: space-between;">
                <button class="button" onclick={clickClose}>Cancel</button>
                <button class="button is-success" onclick={clickAdd}>Add</button>
            </footer>
        </div>
    </div>

    <script>
     this.clickAdd = () => {
         /* let name = this.refs.name.value.trim();
          * let description = this.refs.description.value.trim();

          * ACTIONS.createFriends4neo({
          *     name: name,
          *     description: description,
          * }); */
     };
     this.clickClose = () => {
         ACTIONS.closeModal('add-friendship')
     };
    </script>

</app-modals-add-friendship>
