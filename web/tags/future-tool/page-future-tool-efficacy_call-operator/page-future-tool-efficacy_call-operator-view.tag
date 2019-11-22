<page-future-tool-efficacy_call-operator-view>

    <div style="padding:22px;">
        <div class="field">
            <label class="label">Operator</label>
            <div class="control">
                <p>{operatorName()}</p>
            </div>
        </div>
    </div>

    <script>
     this.operatorName = () => {
         let contents = this.opts.source.future_item.efficacy.contents;

         return contents.package + ' ' + contents.symbol
     };
    </script>

    <style>
     page-future-tool-efficacy_call-operator-view > div {
         width: 100%;
         height: 333px;
     }
    </style>

</page-future-tool-efficacy_call-operator-view>
