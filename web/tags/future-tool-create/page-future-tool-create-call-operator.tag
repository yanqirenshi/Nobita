<page-future-tool-create-call-operator>

    <section class="section">
        <div class="container">
            <h1 class="title">Operator</h1>
            <h2 class="subtitle"></h2>

            <div class="field">
                <div class="control">
                    <button class="button"
                            style="width:100%; justify-content: start;"
                            onclick={clickChoosePackage}>{packageName()}</button>
                </div>
            </div>

            <div class="field" if={opts.source.selected_package}>
                <div class="control">
                    <button class="button"
                            style="width:100%; justify-content: start;"
                            onclick={clickChooseOperator}>{operatorName()}</button>
                </div>
            </div>

        </div>
    </section>

    <script>
     this.operatorName = () => {
         let operator = this.opts.source.selected_operator;

         if (!operator)
             return 'Operator を選択して下さい。';

         return 'Operator: ' + operator.full_name;
     };
     this.clickChooseOperator = () => {
         ACTIONS.openModal('select-cl-operator', {
             'dra@mon': this.opts.source['dra@mon'],
             selected: null,
             selected_package: this.opts.source.selected_package,
             operators: this.opts.source.operators,
         });
     };
    </script>

    <script>
     this.packageName = () => {
         let pkg = this.opts.source.selected_package;

         if (!pkg)
             return 'Package を選択して下さい。';

         return 'Package: ' + pkg.name;
     };
     this.clickChoosePackage = () => {
         ACTIONS.openModal('select-cl-package', {
             selected: null,
             packages: this.opts.source.packages,
         });
     };
    </script>

    <style>
     page-future-tool-create-call-operator > .section {
         padding-bottom: 11px;
     }
    </style>

</page-future-tool-create-call-operator>
