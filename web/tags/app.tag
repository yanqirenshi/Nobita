<app>
    <github-link fill="#BDB04F" color="#fff"
                 href="https://gitlab.com/yanqirenshi/nobita"></github-link>

    <menu-bar brand={{label:'N'}} site={site()} moves={[]}></menu-bar>

    <div ref="page-area"></div>

    <style>
     app > .page {
         width: 100vw;
         overflow: hidden;
         display: block;
     }
     .hide { display: none; }
    </style>

    <script>
     this.site = () => {
         return STORE.state().get('site');
     };

     STORE.subscribe((action) => {
         if (action.type!='MOVE-PAGE')
             return;

         this.tags['menu-bar'].update();

         ROUTER.switchPage(this, this.refs['page-area'], this.site());
     })

     window.addEventListener('resize', (event) => {
         this.update();
     });

     if (location.hash=='')
         location.hash='#school-district'

     this.on('mount', () => {
         ROUTER.switchPage(this, this.refs['page-area'], this.site());
     });
    </script>
</app>
