<menu-bar>
    <aside class="menu">
        <p ref="brand"
           class="menu-label"
           style="font-size: {opts.brand.label>1 ? '12px' : '14px'};"
           onclick={clickBrand}>
            {opts.brand.label}
        </p>
        <ul class="menu-list">
            <li each={opts.site.pages}>
                <a class="{opts.site.active_page==code ? 'is-active' : ''}"
                   href={'#' + code}
                   style="font-size: {menu_label.length>1 ? '12px' : '14px'};">
                    {menu_label}
                </a>
            </li>
        </ul>
    </aside>

    <div class="move-page-menu hide" ref="move-panel">
        <p each={moves()}>
            <a href={href}>{label}</a>
        </p>
    </div>

    <style>
     menu-bar .move-page-menu {
         z-index: 666665;
         background: #fdeff2;
         position: fixed;
         left: 55px;
         top: 0px;
         min-width: 111px;
         height: 100vh;
         box-shadow: 2px 0px 8px 0px #e0e0e0;
         padding: 22px 55px 22px 22px;
     }
     menu-bar .move-page-menu.hide {
         display: none;
     }
     menu-bar .move-page-menu > p {
         margin-bottom: 11px;
     }
     menu-bar > .menu {
         z-index: 666666;
         height: 100vh;
         width: 55px;
         padding: 11px 0px 11px 11px;
         position: fixed;
         left: 0px;
         top: 0px;
         background: #BDB04F;
     }

     menu-bar .menu-label, menu-bar .menu-list a {
         padding: 0;
         width: 33px;
         height: 33px;
         text-align: center;
         margin-top: 8px;
         border-radius: 3px;
         background: none;
         color: #ffffff;
         font-weight: bold;

         padding-top: 7px;
     }
     .menu-label {
         background: #fdeff2;
         color: #BDB04F;
     }
     .menu-label.open {
         background: #fdeff2;
         color: #BDB04F;
         width: 44px;
         border-radius: 3px 0px 0px 3px;
         text-shadow: 0px 0px 1px #eee;
         padding-right: 11px;
     }
     menu-bar .menu-list a.is-active {
         width: 44px;
         padding-right: 11px;
         border-radius: 3px 0px 0px 3px;
         background: #ffffff;
         color: #333333;
     }
    </style>

    <script>
     this.moves = () => {
         let moves = [
             { code: '', href: '', label: '' },
         ]
         return moves.filter((d)=>{
             return d.code != this.opts.current;
         });
     };

     this.brandStatus = (status) => {
         let brand = this.refs['brand'];
         let classes = brand.getAttribute('class').trim().split(' ');

         if (status=='open') {
             if (classes.find((d)=>{ return d!='open'; }))
                 classes.push('open')
         } else {
             if (classes.find((d)=>{ return d=='open'; }))
                 classes = classes.filter((d)=>{ return d!='open'; });
         }
         brand.setAttribute('class', classes.join(' '));
     }

     this.clickBrand = () => {
         return; // 当面使わないので即終了。

         let panel = this.refs['move-panel'];
         let classes = panel.getAttribute('class').trim().split(' ');

         if (classes.find((d)=>{ return d=='hide'; })) {
             classes = classes.filter((d)=>{ return d!='hide'; });
             this.brandStatus('open');
         } else {
             classes.push('hide');
             this.brandStatus('close');
         }
         panel.setAttribute('class', classes.join(' '));
     };
    </script>
</menu-bar>
