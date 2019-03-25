<app>
    <menu-bar brand={{label:'N@'}} site={site()} moves={[]}></menu-bar>

    <app-page-area></app-page-area>

    <div class="smoke"></div>

    <img class="g_an" src="https://github.com/yanqirenshi/nobita/raw/master/web/assets/image/gian.png?raw=true"
         style="" />

    <github-link fill="#BDB04F" color="#fff"
                 href="https://github.com/yanqirenshi/nobita"></github-link>

    <script>
     this.site = () => {
         return STORE.state().get('site');
     };
     this.updateMenuBar = () => {
         if (this.tags['menu-bar'])
             this.tags['menu-bar'].update();
     }
    </script>

    <script>
     STORE.subscribe((action)=>{
         if (action.type=='MOVE-PAGE') {
             this.updateMenuBar();
             this.tags['app-page-area'].update({ opts: { route: action.route }});
         }
     });

     window.addEventListener('resize', (event) => {
         this.update();
     });

     if (location.hash=='')
         location.hash=STORE.get('site.active_page');
    </script>
</app>
