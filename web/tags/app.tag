<app>
    <github-link fill="#BDB04F" color="#fff"
                 href="https://gitlab.com/yanqirenshi/nobita"></github-link>

    <menu-bar brand={{label:'N'}} site={site()} moves={[]}></menu-bar>

    <app-page-area></app-page-area>

    <app-modals source={STORE.get('modals')}></app-modals>

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

             return;
         }

         if (action.type=='OPEN-MODAL' || action.type=='CLOSE-MODAL') {
             this.tags['app-modals'].update();

             return;
         }

         if (action.type=='CREATED-FRIENDS-GxAN') {
             ACTIONS.closeModal('add-gxan')

             return;
         }

     });

     window.addEventListener('resize', (event) => {
         this.update();
     });

     this.on('mount', () => {
         let hash = location.hash.split('/');
         hash[0] = hash[0].substring(1)

         ACTIONS.movePage({ route: hash });
     });
    </script>
</app>
