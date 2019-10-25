<nobita-action-call-func>

    <section class="section" style="padding-top: 11px;">
        <div class="container">

            <div class="contents">
                <input class="input"
                       type="text"
                       placeholder="Operator Symbol"
                       value={operator()}>

                <textarea class="textarea"
                          style="margin-top:33px;"
                          placeholder="Description"
                          rows="11"></textarea>
            </div>


        </div>
    </section>

    <script>
     this.operator = () => {
         let action = this.opts.source.action;

         if (!action || action.type!='CALL-OPERATOR')
             return null;

         return this.opts.source.action.contents.symbol;
     };
    </script>

</nobita-action-call-func>
