riot.tag2('app', '<menu-bar brand="{{label:\'N@\'}}" site="{site()}" moves="{[]}"></menu-bar> <div ref="page-area"></div>', 'app > .page { width: 100vw; height: 100vh; display: block; } app .hide,[data-is="app"] .hide{ display: none; }', '', function(opts) {
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
         location.hash='#page01'
});

riot.tag2('menu-bar', '<aside class="menu"> <p ref="brand" class="menu-label" onclick="{clickBrand}"> {opts.brand.label} </p> <ul class="menu-list"> <li each="{opts.site.pages}"> <a class="{opts.site.active_page==code ? \'is-active\' : \'\'}" href="{\'#\' + code}"> {menu_label} </a> </li> </ul> </aside> <div class="move-page-menu hide" ref="move-panel"> <p each="{moves()}"> <a href="{href}">{label}</a> </p> </div>', 'menu-bar .move-page-menu { z-index: 666665; background: #fdeff2; position: fixed; left: 55px; top: 0px; min-width: 111px; height: 100vh; box-shadow: 2px 0px 8px 0px #e0e0e0; padding: 22px 55px 22px 22px; } menu-bar .move-page-menu.hide { display: none; } menu-bar .move-page-menu > p { margin-bottom: 11px; } menu-bar > .menu { z-index: 666666; height: 100vh; width: 55px; padding: 11px 0px 11px 11px; position: fixed; left: 0px; top: 0px; background: #e198b4; } menu-bar .menu-label, menu-bar .menu-list a { padding: 0; width: 33px; height: 33px; text-align: center; margin-top: 8px; border-radius: 3px; background: none; color: #ffffff; font-weight: bold; padding-top: 7px; font-size: 14px; } menu-bar .menu-label,[data-is="menu-bar"] .menu-label{ background: #fdeff2; color: #e198b4; } menu-bar .menu-label.open,[data-is="menu-bar"] .menu-label.open{ background: #fdeff2; color: #e198b4; width: 44px; border-radius: 3px 0px 0px 3px; text-shadow: 0px 0px 1px #eee; padding-right: 11px; } menu-bar .menu-list a.is-active { width: 44px; padding-right: 11px; border-radius: 3px 0px 0px 3px; background: #ffffff; color: #333333; }', '', function(opts) {
     this.moves = () => {
         let moves = [];
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
});

riot.tag2('section-breadcrumb', '<section-container data="{path()}"> <nav class="breadcrumb" aria-label="breadcrumbs"> <ul> <li each="{opts.data}"> <a class="{active ? \'is-active\' : \'\'}" href="{href}" aria-current="page">{label}</a> </li> </ul> </nav> </section-container>', 'section-breadcrumb section-container > .section,[data-is="section-breadcrumb"] section-container > .section{ padding-top: 3px; }', '', function(opts) {
     this.path = () => {
         let hash = location.hash;
         let path = hash.split('/');

         if (path[0] && path[0].substr(0,1)=='#')
             path[0] = path[0].substr(1);

         let out = [];
         let len = path.length;
         let href = null;
         for (var i in path) {
             href = href ? href + '/' + path[i] : '#' + path[i];

             if (i==len-1)
                 out.push({
                     label: path[i],
                     href: hash,
                     active: true
                 });

             else
                 out.push({
                     label: path[i],
                     href: href,
                     active: false
                 });
         }
         return out;
     }
});

riot.tag2('section-container', '<section class="section"> <div class="container"> <h1 class="title is-{opts.no ? opts.no : 3}"> {opts.title} </h1> <h2 class="subtitle">{opts.subtitle}</h2> <yield></yield> </div> </section>', '', '', function(opts) {
});

riot.tag2('section-contents', '<section class="section"> <div class="container"> <h1 class="title is-{opts.no ? opts.no : 3}"> {opts.title} </h1> <h2 class="subtitle">{opts.subtitle}</h2> <div class="contents"> <yield></yield> </div> </div> </section>', 'section-contents > section.section { padding: 0.0rem 1.5rem 2.0rem 1.5rem; }', '', function(opts) {
});

riot.tag2('section-footer', '<footer class="footer"> <div class="container"> <div class="content has-text-centered"> <p> </p> </div> </div> </footer>', 'section-footer > .footer { padding-top: 13px; padding-bottom: 13px; height: 66px; background: #fef4f4; opacity: 0.7; }', '', function(opts) {
});

riot.tag2('section-header-with-breadcrumb', '<section-header title="{opts.title}"></section-header> <section-breadcrumb></section-breadcrumb>', 'section-header-with-breadcrumb section-header > .section,[data-is="section-header-with-breadcrumb"] section-header > .section{ margin-bottom: 3px; }', '', function(opts) {
});

riot.tag2('section-header', '<section class="section"> <div class="container"> <h1 class="title is-{opts.no ? opts.no : 3}"> {opts.title} </h1> <h2 class="subtitle">{opts.subtitle}</h2> <yield></yield> </div> </section>', 'section-header > .section { padding-top: 13px; padding-bottom: 13px; height: 66px; background: #fef4f4; margin-bottom: 33px; }', '', function(opts) {
});

riot.tag2('section-list', '<table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th>機能</th> <th>概要</th> </tr> </thead> <tbody> <tr each="{data()}"> <td><a href="{hash}">{title}</a></td> <td>{description}</td> </tr> </tbody> </table>', '', '', function(opts) {
     this.data = () => {
         return opts.data.filter((d) => {
             if (d.code=='root') return false;

             let len = d.code.length;
             let suffix = d.code.substr(len-5);
             if (suffix=='_root' || suffix=='-root')
                 return false;

             return true;
         });
     };
});

riot.tag2('sections-list', '<table class="table"> <tbody> <tr each="{opts.data}"> <td><a href="{hash}">{title}</a></td> </tr> </tbody> </table>', '', '', function(opts) {
});

riot.tag2('friends_4neo', '<section-container title="Class: 4NEO"> <section-container title="Slots"> </section-container> <section-container title="Operators"> <section-container title="Function: find-4neo"> </section-container> <section-container title="Function: tx-make-4neo"> </section-container> <section-container title="Generic function: print-object"> </section-container> <section-container title="Generic function: jojo:%to-json"> </section-container> </section-container> </section-container>', '', '', function(opts) {
});

riot.tag2('friends_class-graph', '<section-container title="CLASS図"> <section-contents> <p> </p> </section-contents> </section-container>', '', '', function(opts) {
});

riot.tag2('friends_g-an', '<section-container title="Class: G*AN"> <section-container title="Description"> <p><code>flash-across-ones-mind</code> で処理を開始できる唯一のクラスです。</p> </section-container> <section-container title="Slots"> </section-container> <section-container title="Operators"> <section-container title="Function: find-g*an"> </section-container> <section-container title="Function: tx-make-g*an"> </section-container> <section-container title="Generic function: flash-across-ones-mind"> <section-container title="Description"> <section-contents> <p>一連の処理を開始します。</p> </section-contents> </section-container> </section-container> <section-container title="Generic function: print-object"> </section-container> <section-container title="Generic function: jojo:%to-json"> </section-container> </section-container> </section-container>', '', '', function(opts) {
});

riot.tag2('friends_nobita', '<section-container title="Class: NOBIT@"> <section-container title="Slots"> </section-container> <section-container title="Operators"> <section-container title="Function: find-nobit@"> </section-container> <section-container title="Function: tx-make-nobit@"> </section-container> <section-container title="Generic function: nobit@-p"> </section-container> <section-container title="Generic function: print-object"> </section-container> <section-container title="Generic function: jojo:%to-json"> </section-container> </section-container> </section-container>', '', '', function(opts) {
});

riot.tag2('friends_root', '<section-header title="NOBIT@: 友達"></section-header> <section-container title="概要"> </section-container> <friends_class-graph></friends_class-graph> <section-container title="他のクラス"> <section-container title="Class: node"> </section-container> <section-container title="Class: edge"> </section-container> <section-container title="Class: friend"> </section-container> </section-container>', '', '', function(opts) {
});

riot.tag2('friendships_root', '<section-header title="NOBIT@: 友情"></section-header> <section-container title="概要"> <section-contents> <p>友情とは情報を伝達するための絆です。</p> <p>だれかの思い付き(アイデア)が友情を駆け巡り、何かを生みだすのです。</p> </section-contents> </section-container> <section-container title="データ"> <section-container title="idea"> <section-container title="Variables"> <section-container title="Variable: *idea-id-counter*"> </section-container> </section-container> <section-container title="Operators"> <section-container title="Function: make-idea"> </section-container> </section-container> </section-container> </section-container> <section-container title="Class: FRIENDSHIP"> <section-container title="Slots"> </section-container> <section-container title="Operators"> <section-container title="Function: find-frendship-at-to-classes"> </section-container> <section-container title="Function: find-frendship-at-from"> </section-container> <section-container title="Function: find-frendship-at-to"> </section-container> <section-container title="Function: find-frendship"> </section-container> <section-container title="Function: assert-frendship-1-1"> </section-container> <section-container title="Function: assert-frendship-1-n"> </section-container> <section-container title="Function: assert-frendship"> </section-container> <section-container title="Function: %tx-make-frendship"> </section-container> <section-container title="Generic function: tx-make-frendship"> </section-container> </section-container> </section-container>', '', '', function(opts) {
});

riot.tag2('class_karma-pool', '<section-container title="Class: KARMA-POOL"> <section-container title="Description"> <p></p> </section-container> <section-container title="Slots"> <p>counter</p> <p>queue</p> </section-container> <section-container title="Operators"> <section-container title="Function: make-karma-pool"> </section-container> <section-container title="Generic function: qsize"> </section-container> <section-container title="Generic function: push-karma"> </section-container> <section-container title="Generic function: pop-karma"> </section-container> <section-container title="Generic function: find-karmas"> </section-container> <section-container title="Generic function: rm-karma-at-idea-id"> </section-container> </section-container> </section-container>', '', '', function(opts) {
});

riot.tag2('class_nobiheart', '<section-container title="Class: NOBIHEART"> <section-container title="Description"> <p>心臓はカルマを持ち、カルマを消費します。</p> </section-container> <section-container title="Slots"> <p>karma-pool</p> </section-container> <section-container title="Operators"> <section-container title="Function: make-heart"> </section-container> <section-container title="Generic function: start-heart"> </section-container> <section-container title="Generic function: stop-heart"> </section-container> </section-container> </section-container>', '', '', function(opts) {
});

riot.tag2('hearts_classes', '<section-container title="Classes" data="{classes}"> <section-contents data="{opts.data}"> <table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th>Symbol</th> <th>Description</th> </tr> </thead> <tbody> <tr each="{opts.data}"> <td><a href="{href}">{title}</a></td> <td>{description}</td> </tr> </tbody> </table> </section-contents> </section-container>', '', '', function(opts) {
     this.classes = [
         { href: '#page04/nobiheart',  title: 'NOBIHEART',  description: '' },
         { href: '#page04/karma-pool', title: 'KARMA-POOL', description: 'NOBIHEART のスロットにセットする。NOBIHEARTが処理するためのキューです。' }
     ];
});

riot.tag2('hearts_root', '<section-header title="NOBIT@: G×an\'s 心臓"></section-header> <section-container title="概要"> <section-contents> <p>友情を流れるもの。それは情報です。</p> <p>友情を流すもの。それは心臓です。G×an の</p> <p>G×an は上級魔族なので八つの心臓を持っています。</p> <p>この心臓が友情をドライブします。</p> </section-contents> </section-container> <hearts_classes></hearts_classes> <section-container title="Variable: *hearts*"> <section-container title="Operators"> <section-container title="Function: get-heart"> </section-container> <section-container title="Function: add-heart"> </section-container> <section-container title="Function: rm-heart"> </section-container> </section-container> </section-container> <section-container title="Operators"> <section-container title="Function: heart-core"> </section-container> <section-container title="Function: %heart-core"> </section-container> </section-container> <section-container title="Variable: *hook-heart-core-before*"> <section-container title="Function: heart-core-before"> </section-container> </section-container> <section-container title="Variable: *hook-heart-core-after*"> <section-container title="Function: heart-core-after"> </section-container> </section-container>', '', '', function(opts) {
});

riot.tag2('home_description', '<section-container title="Dependencies"> <section-contents> <table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th>Dependncy</th> <th>Description</th> </tr> </thead> <tbody> <tr> <td><a href="https://gitlab.common-lisp.net/alexandria/alexandria">alexandria</a></td> <td></td> </tr> <tr> <td><a href="https://github.com/edicl/cl-fad">cl-fad</a></td> <td></td> </tr> <tr> <td><a href="https://github.com/dlowe-net/local-time">local-time</a></td> <td></td> </tr> <tr> <td><a href="https://github.com/oconnore/queues">queues</a></td> <td></td> </tr> <tr> <td><a href="https://github.com/yanqirenshi/shinrabanshou">shinrabanshou</a></td> <td></td> </tr> <tr> <td><a href="https://github.com/yanqirenshi/rhythm">rhythm</a></td> <td></td> </tr> </tbody> </table> </section-contents> </section-container>', '', '', function(opts) {
});

riot.tag2('home_usage', '<section-container title="Usage"> <section-contents> <p> <pre>\n(in-package :nobit@)\n\n(nobita.graph:start)\n\n(defparameter *g*an* (tx-make-g*an *graph*))\n(defparameter *4neo-1* (tx-make-4neo *graph*))\n(defparameter *4neo-2* (tx-make-4neo *graph*))\n(defparameter *nobit@-1* (tx-make-nobit@ *graph*))\n(defparameter *nobit@-2* (tx-make-nobit@ *graph*))\n(defparameter *nobit@-3* (tx-make-nobit@ *graph*))\n(defparameter *nobit@-4* (tx-make-nobit@ *graph*))\n\n(defparameter *heart* (get-heart :code :aon))\n\n(tx-make-frendship *graph* *g*an* *4neo-1* *heart*)\n(tx-make-frendship *graph* *4neo-1* *nobit@-1* *heart*)\n(tx-make-frendship *graph* *nobit@-1* *nobit@-2* *heart*)\n(tx-make-frendship *graph* *nobit@-1* *nobit@-3* *heart*)\n(tx-make-frendship *graph* *nobit@-2* *nobit@-4* *heart*)\n(tx-make-frendship *graph* *nobit@-3* *nobit@-4* *heart*)\n(tx-make-frendship *graph* *nobit@-4* *4neo-2* *heart*)\n(tx-make-frendship *graph* *4neo-2* *g*an* *heart*)\n                </pre> </p> </section-contents> </section-container>', '', '', function(opts) {
});

riot.tag2('page01-sec_root', '<section-header title="NOBIT@: Home"></section-header> <section-container> <section-contents> <p>俺の仕事はおまえのもの。おまえの仕事はおまえのもの。</p> </section-contents> </section-container> <home_usage></home_usage> <section-container title="Installation"> <section-contents> <p> <pre>\n(ql:quickload :nobita)\n(ql:quickload :nobita.api)\n                </pre> </p> </section-contents> </section-container> <home_description></home_description> <section-container title="Author"> <section-contents> <p>Satoshi Iwasaki (yanqirenshi@gmail.com)</p> </section-contents> </section-container> <section-container title="Copyright"> <section-contents> <p>Copyright (c) 2014 Satoshi Iwasaki (yanqirenshi@gmail.com)</p> </section-contents> </section-container> <section-container title="License"> <section-contents> <p>MIT</p> </section-contents> </section-container>', '', '', function(opts) {
});

riot.tag2('page01', '', '', '', function(opts) {
     this.mixin(MIXINS.page);

     this.on('mount', () => { this.draw(); });
     this.on('update', () => { this.draw(); });
});

riot.tag2('page02', '', '', '', function(opts) {
     this.mixin(MIXINS.page);

     this.on('mount', () => { this.draw(); });
     this.on('update', () => { this.draw(); });
});

riot.tag2('page03', '', '', '', function(opts) {
     this.mixin(MIXINS.page);

     this.on('mount', () => { this.draw(); });
     this.on('update', () => { this.draw(); });
});

riot.tag2('page04', '', '', '', function(opts) {
     this.mixin(MIXINS.page);

     this.on('mount', () => { this.draw(); });
     this.on('update', () => { this.draw(); });
});
