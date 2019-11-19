<app-modal-select-cl-operator>

    <div class="modal is-active">
        <div class="modal-background" onclick={clickClose}></div>

        <div class="modal-card" style="width: calc(100vw - 20%);">
            <header class="modal-card-head">
                <p class="modal-card-title">Select Operator</p>
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
                    <div class="control operator-pool">
                        <div if={this.keyword==""}>
                            <p>Operator を検索してください。</p>
                        </div>

                        <div if={this.keyword!=""}>
                            <button each={obj in getOperators()}
                                    class="button"
                                    onclick={clickOperator}
                                    operator-name={obj.full_name}>{obj.full_name}</>
                        </div>
                    </div>
                </div>

                <div class="field" if={this.operator}>
                    <div class="control" style="display: flex;">
                        <p style="margin-right:11px;">選択した Operator:</p>
                        <p style="flex-grow: 1; font-weight:bold;">{this.operator.full_name}</p>
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

     this.operator = null;
     this.operators = STORE.get('modals.select-cl-operator.operators').sort((a,b) => {
         return a.name < b.name ? -1 : 1;
     });
     this.getOperators = () => {
         let keyword = this.keyword;

         return this.operators.filter((d) => {
             return d.name.toUpperCase().indexOf(keyword) != -1;
         });
     };
     this.getOperator = (operator_name) => {

         return this.operators.find((d) => {
             return d.full_name == operator_name;
         });
     };
     this.clickOperator = (e) => {
         let button = e.target;
         let operator_name = button.getAttribute('operator-name');

         this.operator = this.getOperator(operator_name);
     };
    </script>


    <script>
     this.clickSelect = () => {
         ACTIONS.modalSelectedOperator(this.operator);
     };
     this.clickClose = () => {
         ACTIONS.closeModal('select-cl-operator')
     };
    </script>

    <style>
     app-modal-select-cl-operator .operator-pool > div {
         width:100%;
         height: 333px;
         background: #fafafa;
         border-radius: 5px;
         padding:22px;
         overflow: auto;
     };
     app-modal-select-cl-operator .operator-pool .button {
         margin-left: 11px;
         margin-bottom: 11px;
     }
    </style>

</app-modal-select-cl-operator>
