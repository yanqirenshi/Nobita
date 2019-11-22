<page-future-tool-efficacy_call-operator-edit>

    <div>
        <button class="button">{operatorPackage()}</button>
        <button class="button">{operatorName()}</button>
    </div>

    <script>
     this.operatorPackage = () => {
         let contents = this.opts.source.future_item.efficacy.contents;

         return contents.package;
     };
     this.operatorName = () => {
         let contents = this.opts.source.future_item.efficacy.contents;

         return contents.symbol
     };
    </script>

    <style>
     page-future-tool-efficacy_call-operator-edit > div {
         padding: 22px;
         width: 100%;
         height: 333px;
     }
    </style>

</page-future-tool-efficacy_call-operator-edit>
