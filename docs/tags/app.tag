<app>
    <menu-bar brand={{label:'N@'}} site={site()} moves={[]}></menu-bar>

    <div ref="page-area"></div>

    <div class="smoke"></div>

    <img class="g_an" src="https://github.com/yanqirenshi/nobita/raw/master/web/assets/image/gian.png?raw=true"
         style="" />

    <script>
     this.site = () => {
         return STORE.state().get('site');
     };

     STORE.subscribe((action)=>{
         if (action.type!='MOVE-PAGE')
             return;

         let tags= this.tags;

         tags['menu-bar'].update();
         ROUTER.switchPage(this, this.refs['page-area'], this.site());
     })

     window.addEventListener('resize', (event) => {
         this.update();
     });

     if (location.hash=='')
         location.hash='#home'
    </script>

    <style>
     app > .page {
         width: 100vw;
         height: 100vh;
         display: block;
     }
     .hide { display: none; }
     app > .smoke {
         display: block;
         position: fixed;
         z-index: -1;
         background:rgba(255,255,255,0.7);
         width:100vw;
         height:100vw;
         left:0;
         top:0;
     }
     app > .g_an {
         display: block;
         position: fixed;
         right: 0px;
         bottom: 0px;
         z-index: -2;
         width: 1110px;
         height: 666px;
     }
    </style>
</app>
