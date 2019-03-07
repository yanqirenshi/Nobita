<app>
    <menu-bar brand={{label:'N@'}} site={site()} moves={[]}></menu-bar>

    <div ref="page-area" style="margin-left:55px;"></div>

    <div class="smoke"></div>

    <img class="g_an" src="https://github.com/yanqirenshi/nobita/raw/master/web/assets/image/gian.png?raw=true"
         style="" />

    <github-link fill="#BDB04F" color="#fff"
                 href="https://github.com/yanqirenshi/nobita"></github-link>

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
</app>
