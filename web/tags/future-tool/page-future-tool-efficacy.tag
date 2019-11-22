<page-future-tool-efficacy>

    <section class="section">
        <div class="container">
            <h1 class="title">Efficacy</h1>
            <h2 class="subtitle"></h2>

            <div class="{efficacyType()}"
                 style="margin-top:11px; margin-bottom:11px;">
                <button class="button call-operator"   efficacy-type="call-operator"   onclick={clickEfficacyType}>Call Operator</button>
                <button class="button evaluation-code" efficacy-type="evaluation-code" onclick={clickEfficacyType}>Evaluation Code</button>
            </div>

            <div>
                <page-future-tool-efficacy_call-operator   if={efficacyType()=="call-operator"}
                                                           efficacy_type={efficacyType()}
                                                           source={childrenSource()}></page-future-tool-efficacy_call-operator>
                <page-future-tool-efficacy_evaluation-code if={efficacyType()=="evaluation-code"}
                                                           efficacy_type={efficacyType()}
                                                           source={childrenSource()}></page-future-tool-efficacy_evaluation-code>
            </div>

        </div>
    </section>

    <script>
     this.childrenSource = () => {
         return this.opts.source;
     };
    </script>

    <script>
     this.efficacy_type = 'call-operator';
     this.efficacyType = () => {
         let future_item = this.opts.source.future_item;

         if (!future_item)
             return null;

         return future_item.efficacy.type.toLowerCase();
     };
     this.clickEfficacyType = (e) => {
         let type = e.target.getAttribute('efficacy-type');
     };
    </script>

    <style>
     page-future-tool-efficacy div.call-operator > button.call-operator {
         background: #BDB04F;
         color: #fff;
         font-weight: bold;
     }
     page-future-tool-efficacy div.call-operator > button.evaluation-code {
         border-color: #fafafa;
     }
     page-future-tool-efficacy div.call-operator > button.evaluation-code:hover {
         background: #F8F7ED;
     }
     page-future-tool-efficacy div.evaluation-code > button.call-operator {
         border-color: #fafafa;
     }
     page-future-tool-efficacy div.evaluation-code > button.call-operator:hover {
         background: #F8F7ED;
     }
     page-future-tool-efficacy div.evaluation-code > button.evaluation-code {
         background: #BDB04F;
         color: #fff;
         font-weight: bold;
     }
    </style>

</page-future-tool-efficacy>
