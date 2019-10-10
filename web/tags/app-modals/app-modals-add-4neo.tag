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
                <!-- Content ... -->
            </section>

            <footer class="modal-card-foot">
                <button class="button" onclick={clickClose}>Cancel</button>
                <button class="button is-success">Add</button>
            </footer>
        </div>
    </div>

    <script>
     this.clickClose = () => {
         ACTIONS.closeModal('add-4neo')
     };
    </script>

</app-modals-add-4neo>
