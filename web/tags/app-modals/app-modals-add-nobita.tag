<app-modals-add-nobita>

    <div class="modal is-active">
        <div class="modal-background" onclick={clickClose}></div>

        <div class="modal-card" style="width:auto;">
            <header class="modal-card-head">
                <p class="modal-card-title">Add Nobita</p>
                <button class="delete"
                        aria-label="close"
                        onclick={clickClose}></button>
            </header>

            <section class="modal-card-body">
                <app-modals-add-nobita-contents></app-modals-add-nobita-contents>
            </section>

            <footer class="modal-card-foot">
                <button class="button" onclick={clickClose}>Cancel</button>
                <button class="button is-success" onclick={clickAdd}>Add</button>
            </footer>
        </div>
    </div>


    <script>
     this.clickAdd = () => {
         let name        = "XXX";
         let description = "YYY";

         ACTIONS.createFriendsNobita({
             name: name,
             description: description,
         });
     };
     this.clickClose = () => {
         ACTIONS.closeModal('add-nobita')
     };
    </script>

    <style>
     app-modals-add-nobita .modal-card {
         width: auto;
         height: auto;
     }
    </style>

</app-modals-add-nobita>
