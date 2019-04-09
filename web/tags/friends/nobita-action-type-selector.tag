<nobita-action-type-selector>

    <section class="section" style="padding-top: 11px; padding-bottom: 11px;">
        <div class="container">
            <div class="dropdown" ref="dropdown">  <!-- is-active -->

                <div class="dropdown-trigger">
                    <button class="button"
                            aria-haspopup="true"
                            aria-controls="dropdown-menu"
                            onclick={click}>
                        <span>{selected_item.label}</span>
                        <span class="icon is-small">
                            <i class="fas fa-angle-down" aria-hidden="true"></i>
                        </span>
                    </button>
                </div>

                <div class="dropdown-menu" id="dropdown-menu" role="menu">
                    <div class="dropdown-content">
                        <a class="dropdown-item"
                           each={type in opts.types}
                           code={type.code}
                           onclick={selectItem}>
                            {type.label}
                        </a>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <script>
     this.on('mount', () => {
         let action = this.opts.source.action;

         if (!action)
             return;

         let type = this.opts.source.action.type.toLowerCase();

         this.selectItemAction(type);
     });
     this.selectItemAction = (code) => {
         this.selected_item = this.opts.types.find((d) => {
             return d.code == code;
         });

         if (!this.selected_item)
             return;

         this.update();

         this.opts.callbacks.select(this.selected_item);
     }
    </script>

    <script>
     this.selected_item = { label: 'Choose Action Type' };

     this.click = (e) => {
         this.refs.dropdown.classList.toggle('is-active');
     };
     this.selectItem = (e) => {
         this.refs.dropdown.classList.remove('is-active');

         let code = e.target.getAttribute('code');
         this.selectItemAction(code);
     };
    </script>

</nobita-action-type-selector>
