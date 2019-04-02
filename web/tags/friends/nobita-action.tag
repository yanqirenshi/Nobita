<nobita-action>

    <section-header-with-breadcrumb title="Nobit@ Action"></section-header-with-breadcrumb>

    <nobita-action-type-selector types={types}
                                 callbacks={callbacks.type}></nobita-action-type-selector>

    <div>
        <nobita-action-call-func class="hide"></nobita-action-call-func>
        <nobita-action-eval-code class="hide"></nobita-action-eval-code>
    </div>

    <script>
     this.types = [
         { code: 'call-operator', label: 'Call Operator', tag: 'nobita-action-call-func' },
         { code: 'evaluate-code', label: 'Evaluate Code', tag: 'nobita-action-eval-code' },
     ];
     this.callbacks = {
         type: {
             select: (item) => {
                 let hides = [];
                 let show  = null;

                 for (let type of this.types) {
                     if (item.code == type.code)
                         show = type;
                     else
                         hides.push(type);
                 }

                 for (type of hides) {
                     dump(this.tags[type.tag].root);
                     this.tags[type.tag].root.classList.add('hide');
                 }

                 this.tags[show.tag].root.classList.remove('hide');
             },
         }
     };
    </script>
</nobita-action>
