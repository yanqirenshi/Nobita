<app-modals>

    <app-modals-add-gxan   if={isShow('add-gxan')}></app-modals-add-gxan>
    <app-modals-add-4neo   if={isShow('add-4neo')}></app-modals-add-4neo>
    <app-modals-add-nobita if={isShow('add-nobita')}></app-modals-add-nobita>

    <script>
     this.isShow = (key) => {
         return this.opts.source[key] ? true : false;
     };
    </script>

</app-modals>
