<nobita-action>

    <section-header-with-breadcrumb title="Nobit@ Action"></section-header-with-breadcrumb>

    <section class="section" style="padding-bottom: 11px;">
        <div class="container">
            <h1 class="title">{title()}</h1>
            <h2 class="subtitle"></h2>
        </div>
    </section>

    <nobita-action-type-selector types={types}
                                 source={source()}
                                 callbacks={callbacks.type}></nobita-action-type-selector>

    <div>
        <nobita-action-call-func class="hide" source={source()}></nobita-action-call-func>
        <nobita-action-eval-code class="hide" source={source()}></nobita-action-eval-code>
    </div>

    <script>
     this.source = () => {
         let id = this.opts._route.params.path.id;

         return STORE.get('nodes.ht')[id];
     };
     this.title = () => {
         let source = this.source();
         if (!source)
             return '';
         return source.name;
     };
     this.on('mount', () => {
         let action = this.source().action;
         if (!action)
             return;

         let type = action.type.toLowerCase();
         let item = this.types.find((d) => {
             return d.code == type;
         });

         if (!item)
             return;

         this.callbacks.type.select(item);
     });
    </script>

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
                     this.tags[type.tag].root.classList.add('hide');
                 }

                 this.tags[show.tag].root.classList.remove('hide');
             },
         }
     };
    </script>
</nobita-action>
