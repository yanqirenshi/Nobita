<app-modals-add-friendship-contents-node>

    <div>
        <div class="node-image" style="padding:11px;">
            <img src={imageSrc()} style="width:89px;height:89px;" />
        </div>

        <div style="margin-top:11px; width: 111px;">
            <input class="input"
                   type="text"
                   style="text-align: center;"
                   placeholder={opts.label}
                   onkeyup={keyUp}>
        </div>
    </div>

    <script>
     this.imageSrc = () => {
         let node = this.node;

         if (!node)
             return "";

         let cls = node._class;

         if (cls=='NOBIT@')
             return '/nobit@/assets/image/nobit@.png';

         if (cls=='4NEO')
             return '/nobit@/assets/image/4neo.png';

         if (cls=='G*AN')
             return '/nobit@/assets/image/g_an.png';
     };
    </script>

    <script>
     this.node = null
     this.keyUp = (e) => {
         let target = e.target;
         let id = target.value;

         this.node = STORE.get('nodes.ht')[id] || null;

         this.update();

         this.opts.callbacks('change-node', {
             type: this.opts.type,
             node: this.node,
         });
     };
    </script>

    <style>
     app-modals-add-friendship-contents-node .node-image {
         border-radius: 5px;
         background:#eee;
         width:111px;
         height:111px;
     }
    </style>

</app-modals-add-friendship-contents-node>
