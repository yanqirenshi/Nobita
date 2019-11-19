<app-modal-select-cl-package>

    <div class="modal is-active">
        <div class="modal-background" onclick={clickClose}></div>

        <div class="modal-card" style="width: calc(100vw - 20%);">
            <header class="modal-card-head">
                <p class="modal-card-title">Select Package</p>
                <button class="delete"
                        aria-label="close"
                        onclick={clickClose}></button>
            </header>

            <section class="modal-card-body">

                <div class="field">
                    <div class="control">
                        <input class="input"
                               type="text"
                               placeholder="Keyword"
                               ref="name"
                               onkeyup={keyupKeyword}>
                    </div>
                </div>

                <div class="field">
                    <div class="control package-pool">
                        <div if={this.keyword==""}>
                            <p>Package を検索してください。</p>
                        </div>

                        <div if={this.keyword!=""}>
                            <button each={obj in getPackages()}
                                    class="button"
                                    onclick={clickPackage}
                                    package-name={obj.name}>{obj.name}</>
                        </div>
                    </div>
                </div>

                <div class="field" if={this.package} ref="selected-package">
                    <div class="control" style="display: flex;">
                        <p style="margin-right:11px;">選択した Package:</p>
                        <p style="flex-grow: 1; font-weight:bold;">{this.package.name}</p>
                    </div>
                </div>


            </section>

            <footer class="modal-card-foot" style="display: flex;justify-content: space-between;">
                <button class="button" onclick={clickClose}>Cancel</button>
                <button class="button is-success" onclick={clickSelect}>Select</button>
            </footer>
        </div>
    </div>

    <script>
     this.keyword = "";
     this.keyupKeyword = (e) => {
         let val = e.target.value.toUpperCase();

         this.keyword = (val.trim()=="" ? "" : val)

         this.update();
     };

     this.package = null;
     this.packages = STORE.get('modals.select-cl-package.packages').sort((a,b) => {
         return a.name < b.name ? -1 : 1;
     });
     this.getPackages = () => {
         let keyword = this.keyword;

         return this.packages.filter((d) => {
             return d.name.toUpperCase().indexOf(keyword) != -1;
         });
     };
     this.getPackage = (package_name) => {

         return this.packages.find((d) => {
             return d.name == package_name;
         });
     };
     this.clickPackage = (e) => {
         let button = e.target;
         let package_name = button.getAttribute('package-name');

         this.package = this.getPackage(package_name);
     };
    </script>


    <script>
     this.clickSelect = () => {
         ACTIONS.modalSelectedPackage(this.package);
     };
     this.clickClose = () => {
         ACTIONS.closeModal('select-cl-package')
     };
    </script>

    <style>
     app-modal-select-cl-package .package-pool > div {
         width:100%;
         height: 333px;
         background: #fafafa;
         border-radius: 5px;
         padding:22px;
         overflow: auto;
     };
     app-modal-select-cl-package .package-pool .button {
         margin-left: 11px;
         margin-bottom: 11px;
     }
    </style>

</app-modal-select-cl-package>
