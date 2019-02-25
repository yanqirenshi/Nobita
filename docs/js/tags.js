riot.tag2('app', '<menu-bar brand="{{label:\'N@\'}}" site="{site()}" moves="{[]}"></menu-bar> <div ref="page-area"></div> <div class="smoke"></div> <img class="g_an" src="https://github.com/yanqirenshi/nobita/raw/master/web/assets/image/gian.png?raw=true" style="">', 'app > .page { width: 100vw; height: 100vh; display: block; } app .hide,[data-is="app"] .hide{ display: none; } app > .smoke { display: block; position: fixed; z-index: -1; background:rgba(255,255,255,0.7); width:100vw; height:100vw; left:0; top:0; } app > .g_an { display: block; position: fixed; right: 0px; bottom: 0px; z-index: -2; width: 1110px; height: 666px; }', '', function(opts) {
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
});

riot.tag2('class_4neo', '<section-header-with-breadcrumb title="Class: 4NEO"></section-header-with-breadcrumb> <section-container title="Description"> <section-contents> </section-contents> </section-container> <section-container title="Slots"> </section-container> <section-container title="Operators"> <section-container title="Function: find-4neo" no="4"> </section-container> <section-container title="Function: tx-make-4neo" no="4"> </section-container> <section-container title="Generic function: print-object" no="4"> </section-container> <section-container title="Generic function: jojo:%to-json" no="4"> </section-container> </section-container>', '', '', function(opts) {
});

riot.tag2('class_friendships', '<section-header-with-breadcrumb title="Class: FRIENDSHIP"></section-header-with-breadcrumb> <section-container title="Description"> </section-container> <section-container title="Slots"> </section-container> <section-container title="Operators"> <section-container title="Function: find-frendship-at-to-classes" no="4"> </section-container> <section-container title="Function: find-frendship-at-from" no="4"> </section-container> <section-container title="Function: find-frendship-at-to" no="4"> </section-container> <section-container title="Function: find-frendship" no="4"> </section-container> <section-container title="Function: assert-frendship-1-1" no="4"> </section-container> <section-container title="Function: assert-frendship-1-n" no="4"> </section-container> <section-container title="Function: assert-frendship" no="4"> </section-container> <section-container title="Function: %tx-make-frendship" no="4"> </section-container> <section-container title="Generic function: tx-make-frendship" no="4"> </section-container> </section-container>', '', '', function(opts) {
});

riot.tag2('class_g-an', '<section-header-with-breadcrumb title="Class: G*AN"></section-header-with-breadcrumb> <section-container title="Description"> <section-contents> <p><code>flash-across-ones-mind</code> で処理を開始できる唯一のクラスです。</p> </section-contents> </section-container> <section-container title="Slots"> </section-container> <section-container title="Operators"> <section-container title="Function: find-g*an"> </section-container> <section-container title="Function: tx-make-g*an"> </section-container> <section-container title="Generic function: flash-across-ones-mind"> <section-container title="Description"> <section-contents> <p>一連の処理を開始します。</p> <p>idea を作成して friendship に 伝播させます</p> </section-contents> </section-container> </section-container> <section-container title="Generic function: print-object" no="4"> </section-container> <section-container title="Generic function: jojo:%to-json" no="4"> </section-container> </section-container>', '', '', function(opts) {
});

riot.tag2('class_ieda', '<section class="hero"> <div class="hero-body"> <div class="container"> <h1 class="title">Class: IDEA</h1> <h2 class="subtitle"> <p>Package: nobit@.idea</p> </h2> <section class="section"> <div class="container"> <h1 class="title">Description:</h1> <div class="contents"> <p>友情ネットワークをかけめぐる情報です。</p> <p>現在は Plist です。</p> <p>クラスにしても良いのかもしれません。</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title">Description:</h1> <div class="contents"> <table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th>Attr</th> <th>Description</th></tr> </thead> <tbody> <tr> <td>:_id</td> <td>idea の id になります。</td> </tr> <tr> <td>:contents</td> <td>なんだろう。</td> </tr> <tr> <td>:results</td> <td>結果をわたすのかな。</td> </tr> <tr> <td>:timestamp</td> <td>タイムスタンプですね。</td> </tr> </tbody> </table> </div> </div> </section> </div> </div> </section>', '', '', function(opts) {
});

riot.tag2('class_karma-pool', '<section class="hero"> <div class="hero-body"> <div class="container"> <h1 class="title">Class: KARMA-POOL</h1> <h2 class="subtitle"> <p>心臓が背負う業。</p> <p>Package: nobit@.karma</p> </h2> <section class="section"> <div class="container"> <h1 class="title is-4">Slots:</h1> <h2 class="subtitle"> </h2> <div class="contents"> <slots-list slots="{slots}"></slots-list> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Class Precedence List:</h1> <h2 class="subtitle"> </h2> <div class="contents"> <p>???</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Description:</h1> <h2 class="subtitle"> </h2> <div class="contents"> <p>queues を利用して karma をキューイングします。</p> <p>FILO でキュー処理されます。</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">See Also:</h1> <h2 class="subtitle"> </h2> <div class="contents"> <p>Generic Function qsize</p> <p>Generic Function push-karma</p> <p>Generic Function pop-karma</p> <p>Generic Function find-karmas</p> <p>Generic Function rm-karma-at-idea-id</p> </div> </div> </section> </div> </div> </section>', '', '', function(opts) {
     this.slots = [
         { name: 'counter', description: '', type: 'Integer', initform: '0' },
         { name: 'queue',   description: '', type: 'Function', initform: 'queues:priority-cqueue'}
     ];
});

riot.tag2('class_nobiheart', '<section class="hero"> <div class="hero-body"> <div class="container"> <h1 class="title">Class: NOBIHEART</h1> <h2 class="subtitle"> <p>心臓はカルマを持ち、カルマを消費するために鼓動する。</p> <p>Package: nobit@.hearts</p> </h2> <section class="section"> <div class="container"> <h1 class="title is-4">Slots:</h1> <h2 class="subtitle"> </h2> <div class="contents"> <p><pre>\n((karma-pool :accessor karma-pool\n               :initarg :karma-pool\n               :initform (make-instance \'karma-pool)))</pre></p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Class Precedence List:</h1> <h2 class="subtitle"> </h2> <div class="contents"> <p>rhythm::heart</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Description:</h1> <h2 class="subtitle"> </h2> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">See Also:</h1> <h2 class="subtitle"> </h2> <div class="contents"> <p>Function nobit@.hearts:make-heart</p> <p>Generic Function nobit@.hearts:start-heart</p> <p>Generic Function nobit@.hearts:stop-heart</p> </div> </div> </section> </div> </div> </section>', '', '', function(opts) {
});

riot.tag2('class_nobita', '<section-header-with-breadcrumb title="Class: NOBIT@"></section-header-with-breadcrumb> <section-container title="Description"> <section-contents> </section-contents> </section-container> <section-container title="Slots"> <section-container title="Function: find-nobit@" no="4"> <section-contents> <slots_nobita></slots_nobita> </section-contents> </section-container> </section-container> <section-container title="Operators"> <generic-function-action-ex></generic-function-action-ex> <section-container title="Function: find-nobit@" no="4"> </section-container> <section-container title="Function: tx-make-nobit@" no="4"> </section-container> <section-container title="Generic function: nobit@-p" no="4"> </section-container> <section-container title="Generic function: print-object" no="4"> </section-container> <section-container title="Generic function: jojo:%to-json" no="4"> </section-container> </section-container>', '', '', function(opts) {
});

riot.tag2('class_node', '<section class="hero"> <div class="hero-body"> <div class="container"> <h1 class="title">Class: Node</h1> <h2 class="subtitle"> <p>Package: nobit@</p> </h2> <section class="section"> <div class="container"> <h1 class="title">Description:</h1> <div class="contents"> <p>G*an, 4neo, Nobit@ の親クラスです。</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title">Description:</h1> <div class="contents"> <table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th>Attr</th> <th>Description</th></tr> </thead> <tbody> <tr> <td>%id</td> <td>idea の id になります。</td> </tr> <tr> <td>name</td> <td></td> </tr> <tr> <td>location</td> <td> 初期値: <code>(list :hold nil :x 0.0 :y 0.0 :z 0.0)</code> </td> </tr> </tbody> </table> </div> </div> </section> </div> </div> </section>', '', '', function(opts) {
});

riot.tag2('slots_nobita', '<table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr><th each="{header}">{label}</th></tr> </thead> <tbody> <tr each="{body}"> <td>{name}</td> <td>{type}</td> <td>{description}</td> </tr> </tbody> </table>', '', '', function(opts) {
     this.header = [
         { label: 'type' },
         { label: 'name' },
         { label: 'description' }
     ];
     this.body = [
         { name: 'name',   description: 'ノードの名称',   type: 'String' },
         { name: 'action', description: '実行するコード', type: 'Function' }
     ];
});

riot.tag2('menu-bar', '<aside class="menu"> <p ref="brand" class="menu-label" onclick="{clickBrand}"> {opts.brand.label} </p> <ul class="menu-list"> <li each="{opts.site.pages}"> <a class="{opts.site.active_page==code ? \'is-active\' : \'\'}" href="{\'#\' + code}"> {menu_label} </a> </li> </ul> </aside> <div class="move-page-menu hide" ref="move-panel"> <p each="{moves()}"> <a href="{href}">{label}</a> </p> </div>', 'menu-bar .move-page-menu { z-index: 666665; background: #ffffff; position: fixed; left: 55px; top: 0px; min-width: 111px; height: 100vh; box-shadow: 2px 0px 8px 0px #e0e0e0; padding: 22px 55px 22px 22px; } menu-bar .move-page-menu.hide { display: none; } menu-bar .move-page-menu > p { margin-bottom: 11px; } menu-bar > .menu { z-index: 666666; height: 100vh; width: 55px; padding: 11px 0px 11px 11px; position: fixed; left: 0px; top: 0px; background: #c3b038; } menu-bar .menu-label, menu-bar .menu-list a { padding: 0; width: 33px; height: 33px; text-align: center; margin-top: 8px; border-radius: 3px; background: none; color: #ffffff; font-weight: bold; padding-top: 7px; font-size: 14px; } menu-bar .menu-label,[data-is="menu-bar"] .menu-label{ background: #ffffff; color: #c3b038; } menu-bar .menu-label.open,[data-is="menu-bar"] .menu-label.open{ background: #ffffff; color: #c3b038; width: 45px; border-radius: 3px 0px 0px 3px; text-shadow: 0px 0px 1px #eee; padding-right: 11px; } menu-bar .menu-list a.is-active { width: 45px; padding-right: 11px; border-radius: 3px 0px 0px 3px; background: #ffffff; color: #333333; }', '', function(opts) {
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

riot.tag2('page-tabs', '<div class="tabs is-boxed"> <ul> <li each="{opts.core.tabs}" class="{opts.core.active_tab==code ? \'is-active\' : \'\'}"> <a code="{code}" onclick="{clickTab}">{label}</a> </li> </ul> </div>', 'page-tabs li:first-child { margin-left: 55px; }', '', function(opts) {
     this.clickTab = (e) => {
         let code = e.target.getAttribute('code');
         this.opts.callback(e, 'CLICK-TAB', { code: code });
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

riot.tag2('section-container', '<section class="section" style="padding-top:8px;"> <div class="container"> <h1 class="title is-{opts.no ? opts.no : 3}"> {opts.title} </h1> <h2 class="subtitle">{opts.subtitle}</h2> <yield></yield> </div> </section>', '', '', function(opts) {
});

riot.tag2('section-contents', '<section class="section"> <div class="container"> <h1 class="title is-{opts.no ? opts.no : 3}"> {opts.title} </h1> <h2 class="subtitle">{opts.subtitle}</h2> <div class="contents"> <yield></yield> </div> </div> </section>', 'section-contents > section.section { padding: 0.0rem 1.5rem 2.0rem 1.5rem; }', '', function(opts) {
});

riot.tag2('section-footer', '<footer class="footer"> <div class="container"> <div class="content has-text-centered"> <p> </p> </div> </div> </footer>', 'section-footer > .footer { padding-top: 13px; padding-bottom: 13px; height: 66px; background: none; opacity: 0.7; }', '', function(opts) {
});

riot.tag2('section-header-with-breadcrumb', '<section-header title="{opts.title}"></section-header> <section-breadcrumb></section-breadcrumb>', 'section-header-with-breadcrumb section-header > .section,[data-is="section-header-with-breadcrumb"] section-header > .section{ margin-bottom: 3px; }', '', function(opts) {
});

riot.tag2('section-header', '<section class="section"> <div class="container"> <h1 class="title is-{opts.no ? opts.no : 3}"> {opts.title} </h1> <h2 class="subtitle">{opts.subtitle}</h2> <yield></yield> </div> </section>', 'section-header > .section { padding-top: 13px; padding-bottom: 13px; height: 66px; background: #ffffff; margin-bottom: 33px; }', '', function(opts) {
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

riot.tag2('classes-table', '<table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th>Package</th> <th>Name</th> <th>Parents</th> <th>File</th> <th>Description</th> </tr> </thead> <tbody> <tr each="{obj in classes()}"> <td>{obj.package}</td> <td><a href="{href(obj)}">{obj.name}</a></td> <td>{obj.parents}</td> <td>{obj.file}</td> <td>{obj.description}</td> </tr> </tbody> </table>', '', '', function(opts) {
     let ndoc = new NobitaDoc();

     this.href = (data) => {
         return ndoc.makeDicDataLink (this.opts.linkPrefix, data);
     };

     this.classes = () => {
         return ndoc.filterDicData(this.opts.groups,
                                   STORE.state().toJS().classes);
     };
});

riot.tag2('dictionaries', '<section class="section"> <div class="container"> <h1 class="title is-4">Variables</h1> <h2 class="subtitle"></h2> <div class="contents"> <variables-table groups="{opts.groups}" link-prefix="{location.hash}"></variables-table> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Classes</h1> <h2 class="subtitle"></h2> <div class="contents"> <classes-table groups="{opts.groups}" link-prefix="{location.hash}"></classes-table> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Operators</h1> <h2 class="subtitle"></h2> <div class="contents"> <operators-table groups="{opts.groups}" link-prefix="{location.hash}"></operators-table> </div> </div> </section>', '', '', function(opts) {
});

riot.tag2('operator-syntax', '<p style=""> <span>{opts.name}</span> <span class="args" style=""> <i style="font-weight:bold;">{args()}</i> <i>{keyPrefix()}</i> <i style="font-weight:bold;">{keys()}</i> </span> <span>⇒</span> <span class="results" style="font-weight:bold;"> <i>{ret()}</i> </span> </p>', 'operator-syntax > p { font-size: 24px; background: rgba(233,233,233,0.3); padding: 8px 24px; border-radius: 3px; } operator-syntax span.args { margin-left: 8px; margin-right: 8px; } operator-syntax span.results { margin-left: 8px; margin-right: 8px; }', '', function(opts) {
     this.args = () => {
         let args = this.opts.args ? this.opts.args : [];
         return args.join(' ');
     };
     this.keyPrefix = () => {
         let keys = this.opts.keys ? this.opts.keys : [];
         return keys.length!=0 ? '&key' : '';
     };
     this.keys = () => {
         let keys = this.opts.keys ? this.opts.keys : [];
         return keys.join(' ');
     };
     this.ret = () => {
         return this.opts.results ? this.opts.results : '???';
     };
});

riot.tag2('operators-table', '<table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th>Package</th> <th>Type</th> <th>Name</th> <th>Description</th> </tr> </thead> <tbody> <tr each="{obj in operators()}"> <td>{obj.package}</td> <td>{obj.type}</td> <td><a href="{href(obj)}">{obj.name}</a></td> <td>{obj.description}</td> </tr> </tbody> </table>', '', '', function(opts) {
     let ndoc = new NobitaDoc();

     this.href = (data) => {
         return ndoc.makeDicDataLink (this.opts.linkPrefix, data);
     };

     this.operators = () => {
         return ndoc.filterDicData(this.opts.groups,
                                   STORE.state().toJS().operators);
     };
});

riot.tag2('page-tab-with-section', '<section class="section" style="padding:0px;"> <div class="container"> <page-tabs core="{opts.core}" callback="{opts.callback}"></page-tabs> </div> </section>', '', '', function(opts) {
});

riot.tag2('sections-list', '<table class="table"> <tbody> <tr each="{opts.data}"> <td><a href="{hash}">{title}</a></td> </tr> </tbody> </table>', '', '', function(opts) {
});

riot.tag2('slots-list', '<table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr><th each="{header}">{label}</th></tr> </thead> <tbody> <tr each="{opts.slots}"> <td>{name}</td> <td>{type}</td> <td>{description}</td> </tr> </tbody> </table>', '', '', function(opts) {
     this.header = [
         { label: 'Type' },
         { label: 'Name' },
         { label: 'Description' }
     ];
});

riot.tag2('variables-table', '<table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th>Package</th> <th>Type</th> <th>Name</th> <th>Description</th> </tr> </thead> <tbody> <tr each="{obj in variables()}"> <td>{obj.package}</td> <td>{obj.type}</td> <td><a href="{href(obj)}">{obj.name}</a></td> <td>{obj.description}</td> </tr> </tbody> </table>', '', '', function(opts) {
     let ndoc = new NobitaDoc();

     this.href = (data) => {
         return ndoc.makeDicDataLink (this.opts.linkPrefix, data);
     };

     this.variables = () => {
         return ndoc.filterDicData(this.opts.groups,
                                   STORE.state().toJS().variables);
     };
});

riot.tag2('friends', '', '', '', function(opts) {
     this.mixin(MIXINS.page);

     this.on('mount', () => { this.draw(); });
     this.on('update', () => { this.draw(); });
});

riot.tag2('friends_class-graph', '<section-container title="CLASS図"> <section-contents> <p> </p> </section-contents> </section-container>', '', '', function(opts) {
});

riot.tag2('friends_classes', '<section-container title="Classe" data="{classes}"> <section-contents data="{opts.data}"> <table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th>Symbol</th> <th>Description</th> </tr> </thead> <tbody> <tr each="{opts.data}"> <td><a href="{href}">{title}</a></td> <td>{description}</td> </tr> </tbody> </table> </section-contents> </section-container>', '', '', function(opts) {
     this.classes = [
         { href: '#page02/g-an',   title: 'G*AN',   description: '' },
         { href: '#page02/4neo',   title: '4NEO',   description: '' },
         { href: '#page02/nobita', title: 'NOBIT@', description: '' }
     ];
});

riot.tag2('friends_root', '<section-header title="NOBIT@: 友達"></section-header> <page-tab-with-section core="{page_tabs}" callback="{clickTab}"></page-tab-with-section> <div> <friends_tab_readme class="hide"></friends_tab_readme> <friends_tab_dictionary class="hide"></friends_tab_dictionary> </div> <section-footer></section-footer>', '', '', function(opts) {
     this.page_tabs = new PageTabs([
         {code: 'readme',     label: 'README',     tag: 'friends_tab_readme' },
         {code: 'dictionary', label: 'Dictionary', tag: 'friends_tab_dictionary' },
     ]);

     this.on('mount', () => {
         this.page_tabs.switchTab(this.tags)
         this.update();
     });

     this.clickTab = (e, action, data) => {
         if (this.page_tabs.switchTab(this.tags, data.code))
             this.update();
     };
});

riot.tag2('friends_tab_dictionary', '<dictionaries groups="{[\'friends\']}"></dictionaries>', '', '', function(opts) {
});

riot.tag2('friends_tab_readme', '<section class="section"> <div class="container"> <h1 class="title is-4"></h1> <h2 class="subtitle"></h2> <div class="contents"> </div> </div> </section>', '', '', function(opts) {
});

riot.tag2('friendships', '', '', '', function(opts) {
     this.mixin(MIXINS.page);

     this.on('mount', () => { this.draw(); });
     this.on('update', () => { this.draw(); });
});

riot.tag2('friendships_classes', '<section-container title="Classe" data="{classes}"> <section-contents data="{opts.data}"> <table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th>Symbol</th> <th>Description</th> </tr> </thead> <tbody> <tr each="{opts.data}"> <td><a href="{href}">{title}</a></td> <td>{description}</td> </tr> </tbody> </table> </section-contents> </section-container>', '', '', function(opts) {
     this.classes = [
         { href: '#page03/friendships', title: 'FRIENDSHIPS', description: '' },
         { href: '#page03/ieda',        title: 'IEDA',        description: '' }
     ];
});

riot.tag2('friendships_root', '<section-header title="NOBIT@: 友情"></section-header> <page-tab-with-section core="{page_tabs}" callback="{clickTab}"></page-tab-with-section> <div> <friendships_tab_readme class="hide"></friendships_tab_readme> <friendships_tab_dictionary class="hide"></friendships_tab_dictionary> </div> <section-footer></section-footer>', '', '', function(opts) {
     this.page_tabs = new PageTabs([
         {code: 'readme',     label: 'README',     tag: 'friendships_tab_readme' },
         {code: 'dictionary', label: 'Dictionary', tag: 'friendships_tab_dictionary' },
     ]);

     this.on('mount', () => {
         this.page_tabs.switchTab(this.tags)
         this.update();
     });

     this.clickTab = (e, action, data) => {
         if (this.page_tabs.switchTab(this.tags, data.code))
             this.update();
     };
});

riot.tag2('friendships_tab_dictionary', '<dictionaries groups="{[\'friendships\']}"></dictionaries>', '', '', function(opts) {
});

riot.tag2('friendships_tab_readme', '<section class="section"> <div class="container"> <h1 class="title is-4"></h1> <h2 class="subtitle"></h2> <div class="contents"> <p>友情とは情報を伝達するための絆です。</p> <p>だれかの思い付き(アイデア)が友情を駆け巡り、何かを生みだすのです。</p> </div> </div> </section>', '', '', function(opts) {
});

riot.tag2('hearts', '', '', '', function(opts) {
     this.mixin(MIXINS.page);

     this.on('mount', () => { this.draw(); });
     this.on('update', () => { this.draw(); });
});

riot.tag2('hearts_callstacks', '<section-container title="Function: HEART-CORE の コールスタック"> <section-contents> <p> <pre>\nheart-core ---+---> heart-core-before\n              |\n              +---> %heart-core\n              |\n              +---> heart-core-after\n                </pre> </p> </section-contents> </section-container>', '', '', function(opts) {
});

riot.tag2('hearts_classes', '<section-container title="Classes" data="{classes}"> <section-contents data="{opts.data}"> <table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th>Symbol</th> <th>Description</th> </tr> </thead> <tbody> <tr each="{opts.data}"> <td><a href="{href}">{title}</a></td> <td>{description}</td> </tr> </tbody> </table> </section-contents> </section-container>', '', '', function(opts) {
     this.classes = [
         { href: '#page04/nobiheart',  title: 'NOBIHEART',  description: '' },
         { href: '#page04/karma-pool', title: 'KARMA-POOL', description: 'NOBIHEART のスロットにセットする。NOBIHEARTが処理するためのキューです。' }
     ];
});

riot.tag2('hearts_root', '<section-header title="NOBIT@: Nobit@\'s 心臓"></section-header> <page-tab-with-section core="{page_tabs}" callback="{clickTab}"></page-tab-with-section> <div> <hearts_tab_readme class="hide"></hearts_tab_readme> <hearts_tab_core class="hide"></hearts_tab_core> <hearts_tab_management class="hide"></hearts_tab_management> <hearts_tab_dictionary class="hide"></hearts_tab_dictionary> </div> <section-footer></section-footer>', '', '', function(opts) {
     this.page_tabs = new PageTabs([
         {code: 'readme',     label: 'README',     tag: 'hearts_tab_readme' },
         {code: 'core',       label: '心臓核',     tag: 'hearts_tab_core' },
         {code: 'management', label: '心臓の管理', tag: 'hearts_tab_management' },
         {code: 'dictionary', label: 'Dictionary', tag: 'hearts_tab_dictionary' },
     ]);

     this.on('mount', () => {
         this.page_tabs.switchTab(this.tags)
         this.update();
     });

     this.clickTab = (e, action, data) => {
         if (this.page_tabs.switchTab(this.tags, data.code))
             this.update();
     };
});

riot.tag2('hearts_root_operators', '<table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <td>Type</td> <td>Name</td> <td>Description</td> </tr> </thead> <tbody> <tr each="{data}"> <td>{type}</td> <td>{name}</td> <td>{description}</td> </tr> </tbody> </table>', '', '', function(opts) {
     this.data = [
         { type: 'Function', name: '%heart-core',              description: '' },
         { type: 'Data',     name: '*hook-heart-core-before*', description: '' },
         { type: 'Data',     name: '*hook-heart-core-after*',  description: '' },
         { type: 'Function', name: 'heart-core-before',        description: '' },
         { type: 'Function', name: 'heart-core-after',         description: '' },
         { type: 'Function', name: 'heart-core',               description: '' },
         { type: 'Data',     name: '*hearts*',                 description: '' },
         { type: 'Function', name: 'get-heart',                description: '' },
         { type: 'Function', name: 'add-heart',                description: '' },
         { type: 'Function', name: 'rm-heart',                 description: '' },
         { type: 'Function', name: 'start',                    description: '' }
     ];
});

riot.tag2('hearts_tab_core', '<section class="section"> <div class="container"> <h1 class="title is-4"></h1> <h2 class="subtitle"></h2> <div class="contents"> <hearts_callstacks></hearts_callstacks> </div> </div> </section>', '', '', function(opts) {
});

riot.tag2('hearts_tab_dictionary', '<dictionaries groups="{[\'hearts\']}"></dictionaries>', '', '', function(opts) {
});

riot.tag2('hearts_tab_management', '<section class="section"> <div class="container"> <h1 class="title is-4"></h1> <h2 class="subtitle"></h2> <div class="contents"> </div> </div> </section>', '', '', function(opts) {
});

riot.tag2('hearts_tab_readme', '<section class="section"> <div class="container"> <h1 class="title is-4">心臓</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>Rhythm の heart クラスを継承しています。</p> <p>心臓には核があります。</p> <p>Rhythm の heart クラスでその核を定期的に実行します。</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">心臓が流すもの</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>友情を流れるもの。それは情報です。</p> <p>友情を流すものとして心臓があります。</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">心臓が負うもの</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>心臓はカルマを負います。</p> <p>そしてカルマの数だけ核を実行し友情に情報を流します。</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">心臓の数</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>Nobit@ は上級魔族なので八つの心臓を持っています。</p> <p>この心臓が友情に情報を流通させます。</p> </div> </div> </section>', '', '', function(opts) {
});

riot.tag2('home', '', '', '', function(opts) {
     this.mixin(MIXINS.page);

     this.on('mount', () => { this.draw(); });
     this.on('update', () => { this.draw(); });
});

riot.tag2('home_description', '<section-container title="Dependencies"> <section-contents> <table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th>Dependncy</th> <th>Description</th> </tr> </thead> <tbody> <tr> <td><a href="https://gitlab.common-lisp.net/alexandria/alexandria">alexandria</a></td> <td></td> </tr> <tr> <td><a href="https://github.com/edicl/cl-fad">cl-fad</a></td> <td></td> </tr> <tr> <td><a href="https://github.com/dlowe-net/local-time">local-time</a></td> <td></td> </tr> <tr> <td><a href="https://github.com/oconnore/queues">queues</a></td> <td></td> </tr> <tr> <td><a href="https://github.com/yanqirenshi/shinrabanshou">shinrabanshou</a></td> <td></td> </tr> <tr> <td><a href="https://github.com/yanqirenshi/rhythm">rhythm</a></td> <td></td> </tr> </tbody> </table> </section-contents> </section-container>', '', '', function(opts) {
});

riot.tag2('home_sec_root', '<section-header title="NOBIT@: Home"></section-header> <page-tab-with-section core="{page_tabs}" callback="{clickTab}"></page-tab-with-section> <div> <home_tab_readme class="hide"></home_tab_readme> <home_tab_usage class="hide"></home_tab_usage> <home_tab_packages class="hide"></home_tab_packages> <home_tab_classes class="hide"></home_tab_classes> <home_tab_operators class="hide"></home_tab_operators> <home_tab_variables class="hide"></home_tab_variables> </div> <section-footer></section-footer>', '', '', function(opts) {
     this.page_tabs = new PageTabs([
         {code: 'readme',    label: 'README',    tag: 'home_tab_readme' },
         {code: 'usage',     label: 'Usage',     tag: 'home_tab_usage' },
         {code: 'packages',  label: 'Packages',  tag: 'home_tab_packages' },
         {code: 'classes',   label: 'Classes',   tag: 'home_tab_classes' },
         {code: 'operators', label: 'Operators', tag: 'home_tab_operators' },
         {code: 'variables', label: 'Variables', tag: 'home_tab_variables' },
     ]);

     this.on('mount', () => {
         this.page_tabs.switchTab(this.tags)
         this.update();
     });

     this.clickTab = (e, action, data) => {
         if (this.page_tabs.switchTab(this.tags, data.code))
             this.update();
     };
});

riot.tag2('home_tab_classes', '<section class="section"> <div class="container"> <h1 class="title is-4">List</h1> <h2 class="subtitle"></h2> <div class="contents"> <classes-table link-prefix="{location.hash}"></classes-table> </div> </div> </section>', '', '', function(opts) {
});

riot.tag2('home_tab_operators', '<section class="section"> <div class="container"> <h1 class="title is-4">List</h1> <h2 class="subtitle"></h2> <div class="contents"> <operators-table link-prefix="{location.hash}"></operators-table> </div> </div> </section>', '', '', function(opts) {
});

riot.tag2('home_tab_packages', '<section class="section"> <div class="container"> <h1 class="title is-4">List</h1> <h2 class="subtitle"></h2> <div class="contents"> </div> </div> </section>', '', '', function(opts) {
});

riot.tag2('home_tab_readme', '<section class="section"> <div class="container"> <h1 class="title">我的工作是你的工作・你的工作是你的工作</h1> <h2 class="subtitle">俺の仕事はおまえのもの。おまえの仕事はおまえのもの。</h2> </div> </section> <section class="section"> <div class="container"> <h1 class="title">Installation</h1> <h2 class="subtitle"></h2> <div class="contents"> <p><pre>\n(ql:quickload :nobit@.graph)\n(ql:quickload :nobit@)\n(ql:quickload :nobit@.api)\n(ql:quickload :nobit@-test)\n\n(nobit@.graph:start)</pre></p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title">Setting</h1> <h2 class="subtitle"></h2> <div class="contents"> <p><pre>\n;; DBの処理開始\n(nobit@.graph:start)\n;; 八つの心臓の鼓動開始\n(nobit@:start)</pre></p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title">Dependencies</h1> <h2 class="subtitle"></h2> <div class="contents"> <ol> <li>alexandria</li> <li>cl-fad</li> <li>local-time</li> <li>queues / queues.simple-cqueue</li> <li>shinrabanshou / upanishad</li> <li>rhythm</li> </ol> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title">Author</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>Satoshi Iwasaki (yanqirenshi@gmail.com)</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title">Copyright</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>Copyright (c) 2014 Satoshi Iwasaki (yanqirenshi@gmail.com)</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title">License</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>MIT</p> </div> </div> </section>', '', '', function(opts) {
});

riot.tag2('home_tab_usage', '<section class="section"> <div class="container"> <h1 class="title is-4">例： <code>(1 + 2) / (3 * 4) = 1/4</code> をやってみます。</h1> <h2 class="subtitle"></h2> <section class="section"> <div class="container"> <h1 class="title is-4">(0) 準備</h1> <h2 class="subtitle"></h2> <div class="contents"> <p><pre>(in-package :nobit@)</pre></p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">(1) Nobit@ の Action を定義</h1> <h2 class="subtitle"></h2> <div class="contents"> <p><pre>\n(defun nobi-action-1 (&key graph idea source nobit@)\n  (declare (ignore graph source nobit@))\n  (setf (getf idea :contents)\n        (list :nobit@1 (list 1 3)\n              :nobit@2 nil\n              :nobit@3 nil))\n  idea)\n\n(defun nobi-action-2 (&key graph idea source nobit@)\n  (declare (ignore graph source nobit@))\n  (let ((contents (getf idea :contents)))\n    (setf (getf contents :nobit@2)\n          (+ 2 (first (getf contents :nobit@1)))))\n  idea)\n\n(defun nobi-action-3 (&key graph idea source nobit@)\n  (declare (ignore graph source nobit@))\n  (let ((contents (getf idea :contents)))\n    (setf (getf contents :nobit@3)\n          (* 4 (second (getf contents :nobit@1)))))\n  idea)\n\n(defun nobi-action-4 (&key graph idea source nobit@)\n  (declare (ignore graph source nobit@))\n  (let ((contents (getf idea :contents)))\n    (setf (getf idea :results)\n          (/ (getf contents :nobit@2)\n             (getf contents :nobit@3))))\n  idea)</pre></p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">(2) 友達を定義する</h1> <h2 class="subtitle"></h2> <div class="contents"> <p><pre>\n(defparameter *g*an*     (tx-make-g*an   *graph* :name "ジャ○アン"))\n(defparameter *4neo-1*   (tx-make-4neo   *graph* :name "ス○夫(始)"))\n(defparameter *4neo-2*   (tx-make-4neo   *graph* :name "ス○夫(結)"))\n(defparameter *nobit@-1* (tx-make-nobit@ *graph* :name "ど"    :action #\'nobi-action-1))\n(defparameter *nobit@-2* (tx-make-nobit@ *graph* :name "え"    :action #\'nobi-action-2))\n(defparameter *nobit@-3* (tx-make-nobit@ *graph* :name "○"    :action #\'nobi-action-3))\n(defparameter *nobit@-4* (tx-make-nobit@ *graph* :name "も〜ん" :action #\'nobi-action-4))</pre></p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">(3) 友情を定義する</h1> <h2 class="subtitle"></h2> <div class="contents"> <p><pre>\n(tx-make-frendship *graph* *g*an*     *4neo-1*   :aon)\n(tx-make-frendship *graph* *4neo-1*   *nobit@-1* :aon)\n(tx-make-frendship *graph* *nobit@-1* *nobit@-2* :aon)\n(tx-make-frendship *graph* *nobit@-1* *nobit@-3* :aon)\n(tx-make-frendship *graph* *nobit@-2* *nobit@-4* :aon)\n(tx-make-frendship *graph* *nobit@-3* *nobit@-4* :aon)\n(tx-make-frendship *graph* *nobit@-4* *4neo-2*   :aon)\n(tx-make-frendship *graph* *4neo-2*   *g*an*     :aon)</pre></p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">(4) 処理の実行</h1> <h2 class="subtitle"></h2> <div class="contents"> <p><pre>\n;; G*an が急に思いつく\n(flash-across-ones-mind *graph* *g*an*)</pre></p> </div> </div> </section> </div> </section>', '', '', function(opts) {
});

riot.tag2('home_tab_variables', '<section class="section"> <div class="container"> <h1 class="title is-4">List</h1> <h2 class="subtitle"></h2> <div class="contents"> <variables-table link-prefix="{location.hash}"></variables-table> </div> </div> </section>', '', '', function(opts) {
});

riot.tag2('home_usage', '<section-container title="Usage"> <section-contents> <p> <pre>\n(in-package :nobit@)\n\n(nobita.graph:start)\n\n(defparameter *g*an* (tx-make-g*an *graph*))\n(defparameter *4neo-1* (tx-make-4neo *graph*))\n(defparameter *4neo-2* (tx-make-4neo *graph*))\n(defparameter *nobit@-1* (tx-make-nobit@ *graph*))\n(defparameter *nobit@-2* (tx-make-nobit@ *graph*))\n(defparameter *nobit@-3* (tx-make-nobit@ *graph*))\n(defparameter *nobit@-4* (tx-make-nobit@ *graph*))\n\n(defparameter *heart* (get-heart :code :aon))\n\n(tx-make-frendship *graph* *g*an* *4neo-1* *heart*)\n(tx-make-frendship *graph* *4neo-1* *nobit@-1* *heart*)\n(tx-make-frendship *graph* *nobit@-1* *nobit@-2* *heart*)\n(tx-make-frendship *graph* *nobit@-1* *nobit@-3* *heart*)\n(tx-make-frendship *graph* *nobit@-2* *nobit@-4* *heart*)\n(tx-make-frendship *graph* *nobit@-3* *nobit@-4* *heart*)\n(tx-make-frendship *graph* *nobit@-4* *4neo-2* *heart*)\n(tx-make-frendship *graph* *4neo-2* *g*an* *heart*)\n                </pre> </p> </section-contents> </section-container>', '', '', function(opts) {
});

riot.tag2('function_make-heart', '<section-container title="Function: make-heart"> <section-container title="Description"> <section-contents> </section-contents> </section-container> </section-container>', '', '', function(opts) {
});

riot.tag2('generic-function-action-ex', '<section-container title="Function: action!" no="4"> <section-container title="Syntax:" no="5"> <section-contents> <p><b>action!</b> <i>graph nobit@ idea source</i> => <i>nil</i></p> </section-contents> </section-container> <section-container title="Arguments and Values:" no="5"> <section-contents> <table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th>Name</th> <th>Type</th> <th>description</th></tr> </thead> <tbody> <tr> <td>graph</td> <td>SHINRA:BANSHOU</td> <td></td> </tr> <tr> <td>nobit@</td> <td>NOBIT@</td> <td></td> </tr> <tr> <td>idea</td> <td>PLIST</td> <td></td> </tr> <tr> <td>source</td> <td>NODE</td> <td></td> </tr> </tbody> </table> </section-contents> </section-container> <section-container title="Description:" no="5"> <section-contents> <p>スロット: <code>action</code> に設定されているコードを実行します。</p> <p><code>action</code> が設定されていない場合は引数の <code>idea</code> をそのまま返します。</p> </section-contents> </section-container> </section-container>', '', '', function(opts) {
});

riot.tag2('generic-function_find-karmas', '<section-container title="Generic function: find-karmas"> <section-contents no="4" title="Syntax:"> <section-contents> <operator-syntax name="find-karmas" args="{[\'karma-pool\', \'idea-id\']}"> </section-contents> </section-contents> <section-contents no="4" title="Method Signatures:"> </section-contents> <section-contents no="4" title="Arguments and Values:"> </section-contents> <section-contents no="4" title="Description:"> </section-contents> </section-container>', '', '', function(opts) {
});

riot.tag2('generic-function_pop-karma', '<section-container title="Generic function: pop-karma"> <section-contents no="4" title="Syntax:"> <section-contents> <operator-syntax name="pop-karma" keys="{[\'karma-pool\']}" results="{\'queue\'}"> </section-contents> </section-contents> <section-contents no="4" title="Method Signatures:"> </section-contents> <section-contents no="4" title="Arguments and Values:"> </section-contents> <section-contents no="4" title="Description:"> </section-contents> </section-container>', '', '', function(opts) {
});

riot.tag2('generic-function_propagation', '<section-container title="Generic function: propagation(spread)"> <section-contents no="4" title="Syntax:"> <section-contents> <operator-syntax name="spread" args="{[\'graph\', \'idea\', \'source\', \'target\']}"></operator-syntax> </section-contents> </section-contents> <section-contents no="4" title="Method Signatures:"> <section-contents> <generic-function_propagation_method-signatures></generic-function_propagation_method-signatures> </section-contents> </section-contents> <section-contents no="4" title="Arguments and Values:"> <section-container no="5" title="graph"> <section-contents> <p></p> </section-contents> </section-container> <section-container no="5" title="idea"> <section-contents> <p></p> </section-contents> </section-container> <section-container no="5" title="source"> <section-contents> <p></p> </section-contents> </section-container> <section-container no="5" title="target"> <section-contents> <p></p> </section-contents> </section-container> </section-contents> <generic-function_propagation_description></generic-function_propagation_description> </section-container>', '', '', function(opts) {
});

riot.tag2('generic-function_propagation_description', '<section-contents no="4" title="Description:"> <section-container no="5" title="For: G*AN"> <section-contents> <p></p> </section-contents> </section-container> <section-container no="5" title="For: 4NEO"> <section-contents> <p></p> </section-contents> </section-container> <section-container no="5" title="For: NOBIT@"> <section-contents> <p>前フレンズの処理が完了しているかを確認し、全て完了している場合に自身の処理を実行する。</p> <p>完了しているかどうかはフレンドシップに対象idが存在するかどうかで判断する。</p> </section-contents> </section-container> <section-container no="5" title="For: FRIENDSHIP"> </section-container> </section-contents>', '', '', function(opts) {
});

riot.tag2('generic-function_propagation_method-signatures', '<table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th each="{headers}">{label}</th> </tr> </thead> <tbody> <tr each="{contents}"> <td>{for}</td> <td>{graph}</td> <td>{idea}</td> <td>{source}</td> <td>{target}</td> </tr> </tbody> </table>', '', '', function(opts) {
     this.headers = [
         { code: 'for',     label: 'for'},
         { code: 'graph',   label: 'Graph'},
         { code: 'idea',    label: 'Idea'},
         { code: 'source',  label: 'Source'},
         { code: 'target', label: 'Target'}
     ];
     this.contents = [
         { for:'G*AN',       graph:'SHINRA:BANSHOU', idea:'List', source:false, target:'G*AN' },
         { for:'4NEO',       graph:'SHINRA:BANSHOU', idea:'List', source:false, target:'4NEO' },
         { for:'NOBIT@',     graph:'SHINRA:BANSHOU', idea:'List', source:false, target:'NOBIT@' },
         { for:'FRIENDSHIP', graph:'SHINRA:BANSHOU', idea:'List', source:false, target:'FRIENDSHIP' }
     ];
});

riot.tag2('generic-function_propagations', '<section-container title="Generic function: propagations(spreads)"> <section-contents no="4" title="Syntax:"> <section-contents> <operator-syntax name="spread" args="{[\'graph\', \'idea\', \'source\', \'targets\']}"></operator-syntax> </section-contents> </section-contents> <section-contents no="4" title="Method Signatures:"> <generic-function_propagations_method-signatures> </generic-function_propagations_method-signatures> </section-contents> <section-contents no="4" title="Arguments and Values:"> </section-contents> <section-contents no="4" title="Description:"> </section-contents> </section-container>', '', '', function(opts) {
});

riot.tag2('generic-function_propagations_method-signatures', '<table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th each="{headers}">{label}</th> </tr> </thead> <tbody> <tr each="{contents}"> <td>{for}</td> <td>{graph}</td> <td>{idea}</td> <td>{source}</td> <td>{targets}</td> </tr> </tbody> </table>', '', '', function(opts) {
     this.headers = [
         { code: 'for',     label: 'for'},
         { code: 'graph',   label: 'Graph'},
         { code: 'idea',    label: 'Idea'},
         { code: 'source',  label: 'Source'},
         { code: 'targets', label: 'Targets'}
     ];
     this.contents = [
         { for:'List', graph:'shinra:banshou', idea:'list', source:false, targets:'list' }
     ];

});

riot.tag2('generic-function_push-karma', '<section-container no="3" title="Generic function: push-karma"> <section-contents no="4" title="Syntax:"> <section-contents> <operator-syntax name="push-karma" keys="{[\'idea_id\', \'graph\', \'source\', \'friendship\']}" results="{null}"> </section-contents> </section-contents> <section-contents no="4" title="Method Signatures:"> </section-contents> <section-contents no="4" title="Arguments and Values:"> </section-contents> <section-contents no="4" title="Description:"> </section-contents> </section-container>', '', '', function(opts) {
});

riot.tag2('generic-function_qsize', '<section-container title="Generic function: qsize"> <section-contents no="4" title="Syntax:"> <section-contents> <operator-syntax name="qsize" args="{[\'pool\']}" results="queues size"> </section-contents> </section-contents> <section-contents no="4" title="Method Signatures:"> </section-contents> <section-contents no="4" title="Arguments and Values:"> </section-contents> <section-contents no="4" title="Description:"> </section-contents> </section-container>', '', '', function(opts) {
});

riot.tag2('generic-function_rm-karma-at-idea-id', '<section-container title="Generic function: rm-karma-at-idea-id"> </section-container> <section-contents no="4" title="Syntax:"> <section-contents> <operator-syntax name="rm-karma-at-idea-id" args="{[\'karam-pool\', \'idea-id\']}"> </section-contents> </section-contents> <section-contents no="4" title="Method Signatures:"> </section-contents> <section-contents no="4" title="Arguments and Values:"> </section-contents> <section-contents no="4" title="Description:"> </section-contents>', '', '', function(opts) {
});

riot.tag2('generic-function_spread-method-signatures', '<table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th>graph</th> <th>idea</th> <th>source</th> <th>target</th> </tr> </thead> <tbody> <tr each="{d in data}"> <td>{d.graph}</td> <td>{d.idea}</td> <td>{d.source}</td> <td>{d.target}</td> </tr> </tbody> </table>', '', '', function(opts) {
     this.data = [
         { graph: 'shinra:banshou', idea: 'list', source: 't', target: '4neo' },
         { graph: 'shinra:banshou', idea: 'list', source: 't', target: 'friendship' },
         { graph: 'shinra:banshou', idea: 'list', source: 't', target: 'g*an' },
         { graph: 'shinra:banshou', idea: 'list', source: 't', target: 'nobit@' },
     ];
});

riot.tag2('generic-function_spread', '<section class="hero"> <div class="hero-body"> <div class="container"> <h1 class="title">Generic Function SPREAD</h1> <h2 class="subtitle"></h2> </div> </div> </section> <div> <section class="section"> <div class="container"> <h1 class="title is-4">Syntax:</h1> <div class="contents"></div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Method Signatures:</h1> <div class="contents"> <generic-function_spread-method-signatures></generic-function_spread-method-signatures> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Arguments and Values:</h1> <div class="contents"></div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Description:</h1> <div class="contents"></div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Examples:</h1> <div class="contents"></div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Affected By:</h1> <div class="contents"></div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Exceptional Situations:</h1> <div class="contents"></div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">See Also:</h1> <div class="contents"></div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Notes:</h1> <div class="contents"></div> </div> </section> </div>', '', '', function(opts) {
});

riot.tag2('generic-function_spreads', '<section class="hero"> <div class="hero-body"> <div class="container"> <h1 class="title">Generic Function SPREADS</h1> <h2 class="subtitle"></h2> </div> <section class="section"> <div class="container"> <h1 class="title is-4">Syntax:</h1> <div class="contents"></div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Method Signatures:</h1> <div class="contents"></div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Arguments and Values:</h1> <div class="contents"></div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Description:</h1> <div class="contents"></div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Examples:</h1> <div class="contents"></div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Affected By:</h1> <div class="contents"></div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Exceptional Situations:</h1> <div class="contents"></div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">See Also:</h1> <div class="contents"></div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Notes:</h1> <div class="contents"></div> </div> </section> </div> </section>', '', '', function(opts) {
});

riot.tag2('generic-function_start-heart', '<section-container title="Generic function: find-karmas"> <section-contents no="4" title="Syntax:"> <section-contents> <operator-syntax name="find-karmas" args="{[\'xxx\']}"></operator-syntax> </section-contents> </section-contents> <section-contents no="4" title="Method Signatures:"> </section-contents> <section-contents no="4" title="Arguments and Values:"> </section-contents> <section-contents no="4" title="Description:"> </section-contents> </section-container>', '', '', function(opts) {
});

riot.tag2('generic-function_stop-heart', '<section-container title="Generic function: stop-heart"> <section-contents no="4" title="Syntax:"> <section-contents> <operator-syntax name="stop-heart" args="{[\'xxx\']}"></operator-syntax> </section-contents> </section-contents> <section-contents no="4" title="Method Signatures:"> </section-contents> <section-contents no="4" title="Arguments and Values:"> </section-contents> <section-contents no="4" title="Description:"> </section-contents> </section-container>', '', '', function(opts) {
});

riot.tag2('propagation', '', '', '', function(opts) {
     this.mixin(MIXINS.page);

     this.on('mount', () => { this.draw(); });
     this.on('update', () => { this.draw(); });
});

riot.tag2('propagation_root', '<section-header title="NOBIT@: ropagation"></section-header> <page-tab-with-section core="{page_tabs}" callback="{clickTab}"></page-tab-with-section> <div> <propagation_tab_readme class="hide"></propagation_tab_readme> <propagation_tab_dictionary class="hide"></propagation_tab_dictionary> </div> <section-footer></section-footer>', '', '', function(opts) {
     this.page_tabs = new PageTabs([
         {code: 'readme',     label: 'README',     tag: 'propagation_tab_readme' },
         {code: 'dictionary', label: 'Dictionary', tag: 'propagation_tab_dictionary' },
     ]);

     this.on('mount', () => {
         this.page_tabs.switchTab(this.tags)
         this.update();
     });

     this.clickTab = (e, action, data) => {
         if (this.page_tabs.switchTab(this.tags, data.code))
             this.update();
     };
});

riot.tag2('propagation_tab_dictionary', '<dictionaries groups="{[\'propagation\']}"></dictionaries>', '', '', function(opts) {
});

riot.tag2('propagation_tab_readme', '<section class="section"> <div class="container"> <h1 class="title is-4"></h1> <h2 class="subtitle"></h2> <div class="contents"> </div> </div> </section>', '', '', function(opts) {
});

riot.tag2('variable_hearts', '<section-container title="Variable: *hearts*"> <section-container title="Operators"> <section-container title="Function: get-heart" no="4"> </section-container> <section-container title="Function: add-heart" no="4"> </section-container> <section-container title="Function: rm-heart" no="4"> </section-container> </section-container> </section-container>', '', '', function(opts) {
});
