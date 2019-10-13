riot.tag2('app-page-area', '', '', '', function(opts) {
     this.on('update', (action) => {
         if (this.opts.route)
             ROUTER.draw(this, STORE.get('site.pages'), this.opts.route);
     });
});

riot.tag2('app', '<menu-bar brand="{{label:\'N@\'}}" site="{site()}" moves="{[]}"></menu-bar> <app-page-area></app-page-area> <div class="smoke"></div> <img class="g_an" src="https://github.com/yanqirenshi/nobita/raw/master/web/assets/image/gian.png?raw=true" style=""> <github-link fill="#BDB04F" color="#fff" href="https://github.com/yanqirenshi/nobita"></github-link>', '', '', function(opts) {
     this.site = () => {
         return STORE.state().get('site');
     };
     this.updateMenuBar = () => {
         if (this.tags['menu-bar'])
             this.tags['menu-bar'].update();
     }

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

riot.tag2('class_nobita', '<section-header-with-breadcrumb title="Class: NOBIT@"></section-header-with-breadcrumb> <section-container title="Description"> <section-contents> </section-contents> </section-container> <section class="section"> <div class="container"> <h1 class="title">Slots</h1> <div class="contents"> <slots_nobita></slots_nobita> </div> <section class="section"> <div class="container"> <h1 class="title is-4">name</h1> <div class="contents"> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">action</h1> <div class="contents"> <p>Plist で実行する内容を設定します。</p> <p>以下の様な感じになる予定です。</p> <p>関数呼び出し: <code>(:type :call-function :function nil :args (:normal nil :key nil :rest nil :optional nil))</code></p> <p>コード実行: <code>(:type :submit-code :code nil)</code></p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">description</h1> <div class="contents"> </div> </div> </section> </div> </section> <section-container title="Operators"> <section-container title="Function: action!" no="4"> </section-container> <section-container title="Function: find-nobit@" no="4"> </section-container> <section-container title="Function: tx-make-nobit@" no="4"> </section-container> <section-container title="Generic function: nobit@-p" no="4"> </section-container> <section-container title="Generic function: print-object" no="4"> </section-container> <section-container title="Generic function: jojo:%to-json" no="4"> </section-container> </section-container>', '', '', function(opts) {
});

riot.tag2('class_node', '<section class="hero"> <div class="hero-body"> <div class="container"> <h1 class="title">Class: Node</h1> <h2 class="subtitle"> <p>Package: nobit@</p> </h2> <section class="section"> <div class="container"> <h1 class="title">Description:</h1> <div class="contents"> <p>G*an, 4neo, Nobit@ の親クラスです。</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title">Description:</h1> <div class="contents"> <table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th>Attr</th> <th>Description</th></tr> </thead> <tbody> <tr> <td>%id</td> <td>idea の id になります。</td> </tr> <tr> <td>name</td> <td></td> </tr> <tr> <td>location</td> <td> 初期値: <code>(list :hold nil :x 0.0 :y 0.0 :z 0.0)</code> </td> </tr> </tbody> </table> </div> </div> </section> </div> </div> </section>', '', '', function(opts) {
});

riot.tag2('slots_nobita', '<table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr><th each="{header}">{label}</th></tr> </thead> <tbody> <tr each="{body}"> <td>{name}</td> <td>{type}</td> <td>{description}</td> </tr> </tbody> </table>', '', '', function(opts) {
     this.header = [
         { label: 'type' },
         { label: 'name' },
         { label: 'description' },
     ];
     this.body = [
         { name: 'name',        description: 'ノードの名称',   type: 'String' },
         { name: 'action',      description: '実行するコード', type: 'PList' },
         { name: 'description', description: '説明',           type: 'String' },
     ];
});

riot.tag2('github-link', '<a id="fork" target="_blank" title="Fork Nobit@ on github" href="{opts.href}" class="github-corner"> <svg width="80" height="80" viewbox="0 0 250 250" fill="{opts.fill}" color="{opts.color}"> <path d="M0,0 L115,115 L130,115 L142,142 L250,250 L250,0 Z"></path> <path class="octo-arm" riot-d="{octo_arm.join(\',\')}" fill="currentColor" style="transform-origin: 130px 106px;"></path> <path class="octo-body" riot-d="{octo_body.join(\',\')}" fill="currentColor"></path> </svg> </a>', 'github-link > .github-corner > svg { position: fixed; top: 0; border: 0; right: 0; } github-link > .github-corner:hover .octo-arm { animation: octocat-wave 560ms ease-in-out } @keyframes octocat-wave { 0%, 100% { transform: rotate(0) } 20%, 60% { transform: rotate(-25deg) } 40%, 80% { transform: rotate(10deg) } }', '', function(opts) {
     this.octo_arm = ["M128.3",
                      "109.0 C113.8",
                      "99.7 119.0",
                      "89.6 119.0",
                      "89.6 C122.0",
                      "82.7 120.5",
                      "78.6 120.5",
                      "78.6 C119.2",
                      "72.0 123.4",
                      "76.3 123.4",
                      "76.3 C127.3",
                      "80.9 125.5",
                      "87.3 125.5",
                      "87.3 C122.9",
                      "97.6 130.6",
                      "101.9 134.4",
                      "103.2"];

     this.octo_body = ["M115.0",
                       "115.0 C114.9",
                       "115.1 118.7",
                       "116.5 119.8",
                       "115.4 L133.7",
                       "101.6 C136.9",
                       "99.2 139.9",
                       "98.4 142.2",
                       "98.6 C133.8",
                       "88.0 127.5",
                       "74.4 143.8",
                       "58.0 C148.5",
                       "53.4 154.0",
                       "51.2 159.7",
                       "51.0 C160.3",
                       "49.4 163.2",
                       "43.6 171.4",
                       "40.1 C171.4",
                       "40.1 176.1",
                       "42.5 178.8",
                       "56.2 C183.1",
                       "58.6 187.2",
                       "61.8 190.9",
                       "65.4 C194.5",
                       "69.0 197.7",
                       "73.2 200.1",
                       "77.6 C213.8",
                       "80.2 216.3",
                       "84.9 216.3",
                       "84.9 C212.7",
                       "93.1 206.9",
                       "96.0 205.4",
                       "96.6 C205.1",
                       "102.4 203.0",
                       "107.8 198.3",
                       "112.5 C181.9",
                       "128.9 168.3",
                       "122.5 157.7",
                       "114.1 C157.9",
                       "116.9 156.7",
                       "120.9 152.7",
                       "124.9 L141.0",
                       "136.5 C139.8",
                       "137.7 141.6",
                       "141.9 141.8",
                       "141.8 Z"];
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

riot.tag2('section-breadcrumb', '<nav class="breadcrumb" aria-label="breadcrumbs"> <ul> <li each="{path()}" class="{active ? \'is-active\' : \'\'}"> <a href="{href}" aria-current="page">{label}</a> </li> </ul> </nav>', 'section-breadcrumb section-container > .section,[data-is="section-breadcrumb"] section-container > .section{ padding-top: 3px; }', '', function(opts) {
     this.label = (node, is_last, node_name) => {
         if (node.menu_label)
             return node.menu_label;

         return is_last ? node_name : node.code;
     };
     this.active = (node, is_last) => {
         if (is_last)
             return true;

         if (!node.tag)
             return true;

         return false;
     };
     this.makeData = (routes, href, path) => {
         if (!path || path.length==0)
             return null;

         let node_name = path[0];
         let node = routes.find((d) => {
             if (d.regex) {
                 return d.regex.exec(node_name);
             } else {
                 return d.code == node_name;
             }
         });

         if (!node) {
             console.warn(routes);
             console.warn(path);
             throw new Error ('なんじゃこりゃぁ!!')
         }

         let sep = href=='#' ? '' : '/';
         let new_href = href + sep + node.code;

         let is_last = path.length == 1;

         let crumb = [{
             label: this.label(node, is_last, node_name),
             href: new_href,
             active: this.active(node, is_last),
         }]

         if (is_last==1)
             return crumb;

         return crumb.concat(this.makeData(node.children, new_href, path.slice(1)))
     };
     this.path = () => {
         let hash = location.hash;
         let path = hash.split('/');

         let routes = STORE.get('site.pages');

         if (path[0] && path[0].substr(0,1)=='#')
             path[0] = path[0].substr(1);

         return this.makeData(routes, '#', path);
     }
});

riot.tag2('section-container', '<section class="section" style="padding-top:8px;"> <div class="container"> <h1 class="title is-{opts.no ? opts.no : 3}"> {opts.title} </h1> <h2 class="subtitle">{opts.subtitle}</h2> <yield></yield> </div> </section>', '', '', function(opts) {
});

riot.tag2('section-contents', '<section class="section"> <div class="container"> <h1 class="title is-{opts.no ? opts.no : 3}"> {opts.title} </h1> <h2 class="subtitle">{opts.subtitle}</h2> <div class="contents"> <yield></yield> </div> </div> </section>', 'section-contents > section.section { padding: 0.0rem 1.5rem 2.0rem 1.5rem; }', '', function(opts) {
});

riot.tag2('section-footer', '<footer class="footer"> <div class="container"> <div class="content has-text-centered"> <p> </p> </div> </div> </footer>', 'section-footer > .footer { padding-top: 13px; padding-bottom: 13px; height: 66px; background: none; opacity: 0.7; }', '', function(opts) {
});

riot.tag2('section-header-with-breadcrumb', '<section class="section"> <div class="container"> <h1 class="title is-{opts.no ? opts.no : 3}"> {opts.title} </h1> <h2 class="subtitle"> <section-breadcrumb></section-breadcrumb> </h2> <yield></yield> </div> </section>', 'section-header-with-breadcrumb > .section { background: #F8F7ED; margin-bottom: 3px; }', '', function(opts) {
});

riot.tag2('section-header', '<section class="section"> <div class="container"> <h1 class="title is-{opts.no ? opts.no : 3}"> {opts.title} </h1> <h2 class="subtitle">{opts.subtitle}</h2> <yield></yield> </div> </section>', 'section-header > .section { background: #f8f7ed; margin-bottom: 33px; }', '', function(opts) {
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

riot.tag2('wbs-guntt-chart', '<div style="overflow:auto;"> <svg class="chart-yabane"></svg> </div>', '', '', function(opts) {
     this.on('update', (action) => {
         let tree = this.opts.data ? this.opts.data : [];
         let selector = 'svg.chart-yabane';

         let options = {
             stage: {
                 selector: selector,
                 padding: 11,
             },
             scale: this.opts.options.scale,
         };

         let d3yabane = new D3jsYabane({ callback: this.opts.callback })
             .config(options)
             .setScale()
             .makeStage()
             .data(tree)
             .draw();
     });
});

riot.tag2('wbs-tree-list', '<table class="table is-bordered is-narrow is-hoverable is-fullwidth"> <thead> <tr> <th rowspan="2" class="{isHideCol(\'code\')}">Code</th> <th rowspan="2" class="{isHideCol(\'name\')}">Name</th> <th colspan="4" class="{isHideCol(\'schedule\')}">Schedule</th> <th colspan="4" class="{isHideCol(\'result\')}">Result</th> <th rowspan="2" class="{isHideCol(\'operators\')} {hideOperators()}"> 操作 </th> <th rowspan="2" class="{isHideCol(\'description\')}">Description</th> </tr> <tr> <th colspan="2" class="{isHideCol(\'schedule\')}">start</th> <th colspan="2" class="{isHideCol(\'schedule\')}">end</th> <th colspan="2" class="{isHideCol(\'result\')}">start</th> <th colspan="2" class="{isHideCol(\'result\')}">end</th> </tr> </thead> <tbody> <tr each="{tableData()}" class="{tool.projectClass(_core._class)}"> <td nowrap class="{isHideCol(\'code\')}"> <a href="{pageLinkUrl(_core)}">{_core._id}</a> </td> <td nowrap class="{isHideCol(\'name\')}"> <span class="tree-mergin">{tool.margin(_level)}</span> <span>{_core.name}</span> </td> <td class="{_class} {isHideCol(\'schedule\')}" nowrap> {tool.date2str(term(_core,\'schedule\',\'start\'))} </td> <td class="week {_class} {isHideCol(\'schedule\')}" nowrap> {tool.date2week(term(_core,\'schedule\',\'start\'))} </td> <td class="{_class} {isHideCol(\'schedule\')}" nowrap> {tool.date2str(term(_core,\'schedule\',\'end\'))} </td> <td class="week {_class} {isHideCol(\'schedule\')}" nowrap> {tool.date2week(term(_core,\'schedule\',\'end\'))} </td> <td class="{_class} {isHideCol(\'result\')}" nowrap> {tool.date2str(term(_core,\'result\',\'start\'))} </td> <td class="week {_class} {isHideCol(\'result\')}" nowrap> {tool.date2week(term(_core,\'result\',\'start\'))} </td> <td class="{_class} {isHideCol(\'result\')}" nowrap> {tool.date2str(term(_core,\'result\',\'end\'))} </td> <td class="week {_class} {isHideCol(\'result\')}" nowrap> {tool.date2week(term(_core,\'result\',\'end\'))} </td> <td class="operators {isHideCol(\'operators\')} {hideOperators()}"> <button class="button is-small add-child {hideAddChildOperator(this)}" onclick="{clickAddChild}" node_id="{_core._id}"> 子を追加 </button> <button class="button is-small delete-node {hideDeleteOperator(this)}" onclick="{clickDeleteWp}" node_id="{_core._id}"> 削除 </button> </td> <td nowrap class="{isHideCol(\'description\')}"> <span>{_core.description}</span> </td> </tr> </tbody> </table>', 'wbs-tree-list .table th { background: #EAE2D6; color: #867666; font-size: 12px; vertical-align: middle; text-align: center; } wbs-tree-list .table td { font-size: 12px; vertical-align: middle; } wbs-tree-list .table tr.project td { font-size: 16px; font-weight: bold; } wbs-tree-list .table tr.wbs td { font-size: 14px; font-weight: bold; } wbs-tree-list td.WBS { color: #888888; } wbs-tree-list td.PROJECT { color: #666666; } wbs-tree-list td.operators { text-align: center; } wbs-tree-list td.operators > button.button { width: 100%; } wbs-tree-list td.operators > button.button.add-child:hover { background: #89c3eb; color: #ffffff; font-weight: bold; } wbs-tree-list td.operators > button.button.delete-node:hover { background: #ec6d71; color: #ffffff; font-weight: bold; } wbs-tree-list span.tree-mergin { font-size: 12px; font-weight: normal; } wbs-tree-list .table td.week { font-size: 12px; padding-left: 1px; padding-right: 1px; text-align: center; }', '', function(opts) {
     this.tool = new Wbs();

     this.pageLinkUrl = (record) => {
         let keys = "options.rows.operators.pageLink"
         let func = keys.split('.').reduce((a, b) => {
             if (!a || !a[b])
                 return null;

             return a[b];
         }, this.opts);

         if (func)
             return func(record);

         return this.tool.hashWbsPage(record._id, record._class);
     };

     this.clickAddChild = (e) => {
         this.opts.callback('open-add-child', {
             _id: e.target.getAttribute('node_id')
         });
     };
     this.clickDeleteWp = (e) => {
         this.opts.callback('open-delete-workpackage', {
             _id: e.target.getAttribute('node_id')
         });
     };
     STORE.subscribe((action) => {
         if (action.type=='FETCHED-PROJECT-TREE')
             this.update();

         if (action.type=='MOVE-PAGE')
             this.update();
     });

     this.options = { columns: this.opts.options.columns };
     this.isHideCol = (keys_str) => {
         if (!this.options.columns)
             return '';

         let keys = keys_str.split('.');
         let options = { children: this.options.columns };

         for (let key of keys) {
             let next = options.children[key]

             if (!next)
                 return '';

             options = next;
         }

         return options.hide ? 'hide' : '';
     };
     this.hideOperators = () => {
         if (!this.opts.options ||
             !this.opts.options.security)
             return '';

         let v = (this.opts.options.security.create || this.opts.options.security.delete);

         return v ? '' : 'hide';
     };
     this.hideAddChildOperator = (data) => {
         return data._class=='WBS' ? '' : 'hide';
     };
     this.hideDeleteOperator = (data) => {
         return data._class=='WORKPACKAGE' ? '' : 'hide';
     };

     this.term = (data, key, type) => {
         if (!data || !data[key]) return null;

         return data[key][type];
     };
     this.tableData = () => {
         let data = this.opts.data;

         if (!data)
             return [];

         let options = this.opts.options;
         if (options.rows && options.rows.workpackage)
             if (options.rows.workpackage.hide)
                 return data.filter((d) => {
                     return d._class != "WORKPACKAGE"
                 });

         return data;
     };
});

riot.tag2('classes-table-section', '<section class="section"> <div class="container"> <h1 class="title is-4">Classes:</h1> <div class="contents"> <classes-table targets="{targets()}" link-prefix="{location.hash}"></classes-table> </div> </div> </section>', '', '', function(opts) {
     this.targets = () => {
         if (this.opts.targets && this.opts.targets.classes)
             return this.opts.targets.classes;

         return [];
     };
});

riot.tag2('classes-table', '<table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th>Package</th> <th>Name</th> <th>Parents</th> <th>File</th> <th>Description</th> </tr> </thead> <tbody> <tr each="{obj in classes()}"> <td>{obj.package}</td> <td><a href="{href(obj)}">{obj.name}</a></td> <td>{obj.parents}</td> <td>{obj.file}</td> <td>{obj.description}</td> </tr> </tbody> </table>', '', '', function(opts) {
     let ndoc = new NobitaDoc();

     this.href = (data) => {
         return ndoc.makeDicDataLink (this.opts.linkPrefix, data);
     };

     this.classes = () => {
         let all = STORE.state().get('classes');

         if (this.opts.groups)
             return ndoc.filterDicData(this.opts.groups,
                                       STORE.state().toJS().classes);

         if (this.opts.targets) {

             return all.filter((d) => {
                 return this.opts.targets.find((x) => {
                     return x == d.name;
                 });
             })
         }

         return all;
     };
});

riot.tag2('dictionaries', '<section class="section"> <div class="container"> <h1 class="title is-4">Variables</h1> <h2 class="subtitle"></h2> <div class="contents"> <variables-table groups="{opts.groups}" link-prefix="{location.hash}"></variables-table> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Classes</h1> <h2 class="subtitle"></h2> <div class="contents"> <classes-table groups="{opts.groups}" link-prefix="{location.hash}"></classes-table> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Operators</h1> <h2 class="subtitle"></h2> <div class="contents"> <operators-table groups="{opts.groups}" link-prefix="{location.hash}"></operators-table> </div> </div> </section>', '', '', function(opts) {
});

riot.tag2('operator-syntax', '<p style=""> <span>{name()}</span> <span class="args" style=""> <i style="font-weight:bold;">{args()}</i> <i>{keyPrefix()}</i> <i style="font-weight:bold;">{keys()}</i> </span> <span>⇒</span> <span class="results" style="font-weight:bold;"> <i>{ret()}</i> </span> </p>', 'operator-syntax > p { font-size: 24px; background: rgba(233,233,233,0.3); padding: 8px 24px; border-radius: 3px; } operator-syntax span.args { margin-left: 8px; margin-right: 8px; } operator-syntax span.results { margin-left: 8px; margin-right: 8px; }', '', function(opts) {
     this.name = () => {
         if (!opts.name)
             return '????????';

         return opts.name.toLowerCase();
     };
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

riot.tag2('operators-table-section', '<section class="section"> <div class="container"> <h1 class="title is-4">Operators:</h1> <div class="contents"> <operators-table targets="{targets()}" link-prefix="{location.hash}"></operators-table> </div> </div> </section>', '', '', function(opts) {
     this.targets = () => {
         if (this.opts.targets && this.opts.targets.operators)
             return this.opts.targets.operators;

         return [];
     }
});

riot.tag2('operators-table', '<table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th>Export</th> <th>Package</th> <th>Type</th> <th>Name</th> <th>Description</th> </tr> </thead> <tbody> <tr each="{obj in operators()}"> <td>{export(obj)}</td> <td>{obj.package}</td> <td>{obj.type}</td> <td><a href="{href(obj)}">{obj.name}</a></td> <td>{obj.description}</td> </tr> </tbody> </table>', '', '', function(opts) {
     let ndoc = new NobitaDoc();
     this.export = (data) => {
         if (data.export===null)
             return '??';

         if (data.export===true)
             return '○';

         return '--'
     };

     this.href = (data) => {
         return ndoc.makeDicDataLink (this.opts.linkPrefix, data);
     };

     this.operators = () => {
         let all = STORE.state().get('operators');

         if (this.opts.groups)
             return ndoc.filterDicData(this.opts.groups,
                                       STORE.state().toJS().operators);
         if (this.opts.targets) {

             return all.filter((d) => {
                 return this.opts.targets.find((x) => {
                     return x == d.name;
                 });
             })
         }

         return all;
     };
});

riot.tag2('packages-table', '<table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th>Name</th> <th>Nicknames</th> <th>File</th> <th>Description</th> </tr> </thead> <tbody> <tr each="{obj in packages()}"> <td>{obj.name}</td> <td> <span each="{nn in obj.nicknames}"> {nn} </span> </td> <td>{obj.file}</td> <td>{obj.description}</td> </tr> </tbody> </table>', '', '', function(opts) {
     let ndoc = new NobitaDoc();

     this.packages = () => {
         let all = STORE.state().get('packages');

         return all;
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

riot.tag2('variables-table-section', '<section class="section"> <div class="container"> <h1 class="title is-4">Variables:</h1> <div class="contents"> <variables-table targets="{targets.variables}" link-prefix="{location.hash}"></variables-table> </div> </div> </section>', '', '', function(opts) {
     this.targets = () => {
         if (this.opts.targets && this.opts.targets.variables)
             return this.opts.targets.variables;

         return [];
     };
});

riot.tag2('variables-table', '<table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th>Package</th> <th>Type</th> <th>Name</th> <th>Description</th> </tr> </thead> <tbody> <tr each="{obj in variables()}"> <td>{obj.package}</td> <td>{obj.type}</td> <td><a href="{href(obj)}">{obj.name}</a></td> <td>{obj.description}</td> </tr> </tbody> </table>', '', '', function(opts) {
     let ndoc = new NobitaDoc();

     this.href = (data) => {
         return ndoc.makeDicDataLink (this.opts.linkPrefix, data);
     };

     this.variables = () => {
         let all = STORE.state().get('variables');

         if (this.opts.groups)
             return ndoc.filterDicData(this.opts.groups,
                                       STORE.state().toJS().variables);

         if (this.opts.targets) {
             return all.filter((d) => {
                 return this.opts.targets.find((x) => {
                     return x == d.name;
                 });
             })
         }

         return all;
     };
});

riot.tag2('idea-data-structure-table', '<table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <th>Indicator</th> <th>Description</th> </thead> <tbody> <tr each="{rec in datastruct}"> <td>{rec.indicator}</td> <td>{rec.description}</td> </tr> </tbody> </table>', '', '', function(opts) {
     this.datastruct = STORE.state().toJS().data.structures.idea;
});

riot.tag2('karma-data-structure-table', '<table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <th>Indicator</th> <th>Description</th> </thead> <tbody> <tr each="{rec in datastruct}"> <td>{rec.indicator}</td> <td>{rec.description}</td> </tr> </tbody> </table>', '', '', function(opts) {
     this.datastruct = STORE.state().toJS().data.structures.karma;
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

riot.tag2('friends_root', '<section-header title="NOBIT@: 友達"></section-header> <page-tab-with-section core="{page_tabs}" callback="{clickTab}"></page-tab-with-section> <div class="tab-contents-area"> <friends_tab_readme class="hide"></friends_tab_readme> <friends_tab_friend class="hide"></friends_tab_friend> <friends_tab_g-an class="hide"></friends_tab_g-an> <friends_tab_4neo class="hide"></friends_tab_4neo> <friends_tab_nobita class="hide"></friends_tab_nobita> <friends_tab_dictionary class="hide"></friends_tab_dictionary> </div> <section-footer></section-footer>', '', '', function(opts) {
     this.page_tabs = new PageTabs([
         {code: 'readme',     label: 'README',     tag: 'friends_tab_readme' },
         {code: 'friend',     label: 'Friend',     tag: 'friends_tab_friend' },
         {code: 'g-an',       label: 'G * An',     tag: 'friends_tab_g-an' },
         {code: '4neo',       label: '4Neo',       tag: 'friends_tab_4neo' },
         {code: 'nobita',     label: 'NoBit@',     tag: 'friends_tab_nobita' },
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

riot.tag2('friends_tab_4neo', '<section class="section"> <div class="container"> <h1 class="title is-4"></h1> <h2 class="subtitle"></h2> <div class="contents"> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Operators:</h1> <div class="contents"> <operators-table targets="{targets.operators}" link-prefix="{location.hash}"></operators-table> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Variables:</h1> <div class="contents"> <variables-table targets="{targets.variables}" link-prefix="{location.hash}"></variables-table> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Classes:</h1> <div class="contents"> <classes-table targets="{targets.classes}" link-prefix="{location.hash}"></classes-table> </div> </div> </section>', '', '', function(opts) {
     this.targets = {
         operators: [
             'find-4neo',
             'get-4neo',
             'tx-make-4neo',
         ],
         variables: [
         ],
         classes:   [
             '4neo',
         ],
     };
});

riot.tag2('friends_tab_dictionary', '<dictionaries groups="{[\'friends\']}"></dictionaries>', '', '', function(opts) {
});

riot.tag2('friends_tab_friend', '<section class="section"> <div class="container"> <h1 class="title is-4"></h1> <h2 class="subtitle"></h2> <div class="contents"> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Operators:</h1> <div class="contents"> <operators-table targets="{targets.operators}" link-prefix="{location.hash}"></operators-table> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Variables:</h1> <div class="contents"> <variables-table targets="{targets.variables}" link-prefix="{location.hash}"></variables-table> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Classes:</h1> <div class="contents"> <classes-table targets="{targets.classes}" link-prefix="{location.hash}"></classes-table> </div> </div> </section>', '', '', function(opts) {
     this.targets = {
         operators: [
             'tx-save-location',
         ],
         variables: [
         ],
         classes:   [
             'node',
             'friend',
         ],
     };
});

riot.tag2('friends_tab_g-an', '<section class="section"> <div class="container"> <h1 class="title is-4"></h1> <h2 class="subtitle"></h2> <div class="contents"> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Operators:</h1> <div class="contents"> <operators-table targets="{targets.operators}" link-prefix="{location.hash}"></operators-table> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Variables:</h1> <div class="contents"> <variables-table targets="{targets.variables}" link-prefix="{location.hash}"></variables-table> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Classes:</h1> <div class="contents"> <classes-table targets="{targets.classes}" link-prefix="{location.hash}"></classes-table> </div> </div> </section>', '', '', function(opts) {
     this.targets = {
         operators: [
             'flash-across-ones-mind',
             'start',
             'find-g*an',
             'get-g*an',
             'tx-make-g*an',
         ],
         variables: [
         ],
         classes:   [
             'g*an',
         ],
     };
});

riot.tag2('friends_tab_nobita-action', '<section class="section"> <div class="container"> <h1 class="title is-4">NoBit@アクション の作法</h1> <h2 class="subtitle"></h2> <div class="contents"> <p><code>action!</code> で NoBit@ の action が実行されます。</p> </div> <section class="section"> <div class="container"> <h1 class="title is-5">NoBit@ の action の引数</h1> <h2 class="subtitle"></h2> <div class="contents"> <p> NoBit@ の action には以下の情報がキーワード引数として渡されます。</p> <ol> <li>:graph</li> <li>:idea</li> <li>:nobit@</li> <li>:source</li> </ol> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-5">NoBit@ の action の戻り値</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>NoBit@ の action の戻り値は、新しく作成された idea の :contents にセットされます。</p> <p>戻値 がセットされた idea は後続の処理に流されて行きます。</p> <p>NoBit@ の action がエラーとなった場合は、そのコンディションが idea の :contents にセットされます。</p> </div> </div> </section> </div> </section>', '', '', function(opts) {
});

riot.tag2('friends_tab_nobita', '<section class="section"> <div class="container"> <h1 class="title is-4">概要</h1> <h2 class="subtitle"></h2> <div class="contents"> </div> </div> </section> <friends_tab_nobita-action></friends_tab_nobita-action> <operators-table-section targets="{targets}"></operators-table-section> <variables-table-section targets="{targets}"></variables-table-section> <classes-table-section targets="{targets}"></classes-table-section>', '', '', function(opts) {
     this.targets = {
         operators: [
             'action!',
             'find-nobit@',
             'get-nobit@',
             'tx-make-nobit@',
         ],
         variables: [
         ],
         classes:   [
             'nobit@',
         ],
     };
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

riot.tag2('friendships_root', '<section-header title="NOBIT@: 友情"></section-header> <page-tab-with-section core="{page_tabs}" callback="{clickTab}"></page-tab-with-section> <div class="tab-contents-area"> <friendships_tab_readme class="hide"></friendships_tab_readme> <friendships_tab_idea class="hide"></friendships_tab_idea> <friendships_tab_friendship class="hide"></friendships_tab_friendship> <friendships_tab_relationship-roules class="hide"></friendships_tab_relationship-roules> <friendships_tab_dictionary class="hide"></friendships_tab_dictionary> </div> <section-footer></section-footer>', '', '', function(opts) {
     this.page_tabs = new PageTabs([
         {code: 'readme',     label: 'README',     tag: 'friendships_tab_readme' },
         {code: 'friendship', label: '友情',       tag: 'friendships_tab_friendship' },
         {code: 'roules',     label: '友情の掟',   tag: 'friendships_tab_relationship-roules' },
         {code: 'idea',       label: 'アイデア',   tag: 'friendships_tab_idea' },
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

riot.tag2('friendships_tab_friendship', '<section class="section"> <div class="container"> <h1 class="title is-4">概要</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>友達と友達の関係を維持するためのものです。</p> </div> </div> </section> <operators-table-section targets="{targets}"></operators-table-section> <classes-table-section targets="{targets}"></classes-table-section>', '', '', function(opts) {
     this.targets = {
         operators: [
             'tx-make-frendship',
             '%tx-make-frendship',
             'find-frendship',
             'find-frendship-at-to-classes',
             'find-frendship-at-from',
             'find-frendship-at-to',
         ],
         classes:   [
             'edge',
             'friendship',
         ],
     };
});

riot.tag2('friendships_tab_idea-data-structure', '<section class="section"> <div class="container"> <h1 class="title is-4">データ構造</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>こんな構造をしています。</p> <idea-data-structure-table></idea-data-structure-table> </div> <section class="section"> <div class="container"> <h1 class="title is-5">:_id</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>アイデアのユニーク・キーです。</p> <p><code>*idea-id-counter*</code> で採番されます。</p> <p>現時点(2019-03-11)では idea は Plist です。<br>将来的にはクラスにするかもしれません。</p> <p>また、DBには保管されていない状況です。</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-5">:contents</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>入力情報です。</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-5">:results</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>出力情報です。</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-5">:timestamp</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>処理時間です。</p> </div> </div> </section> </div> </section>', '', '', function(opts) {
});

riot.tag2('friendships_tab_idea', '<section class="section"> <div class="container"> <h1 class="title is-4">概要</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>友情のネットワークを駆け巡るのはアイデアです。</p> <p>最初は小さなアイデアも、友情のネットワークを経ることで大きく、多きく、強く、格好良くなるものです。</p> </div> <section class="section"> <div class="container"> <h1 class="title is-4">NoBit@ との受け/渡し</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>現在は idea をそのまま渡しています。</p> <p>そして、 NoBit@ は必ず idea を返す必要があります。</p> <p>このやり方は良くないと思っています。</p> <p>idea の _id と contents を NoBit@ に渡し、NoBit@ が返した値を Result に入れるべきと考えます。</p> </div> </div> </section> </div> </section> <friendships_tab_idea-data-structure></friendships_tab_idea-data-structure> <operators-table-section targets="{targets}"></operators-table-section> <variables-table-section targets="{targets}"></variables-table-section>', '', '', function(opts) {
     this.targets = {
         operators: ['make-idea'],
         variables: ['*idea-id-counter*'],
     };
});

riot.tag2('friendships_tab_readme', '<section class="section"> <div class="container"> <h1 class="title is-4"></h1> <h2 class="subtitle"></h2> <div class="contents"> <p>友情とは情報を伝達するための絆です。</p> <p>だれかの思い付き(アイデア)が友情を駆け巡り、何かを生みだすのです。</p> </div> </div> </section>', '', '', function(opts) {
});

riot.tag2('friendships_tab_relationship-roules', '<section class="section"> <div class="container"> <h1 class="title is-4">概要</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>友情にも掟があります。</p> <p>網状のように見えても、部分で見ると階層のようにも見えるものなのです。</p> </div> </div> </section> <operators-table-section targets="{targets}"></operators-table-section>', '', '', function(opts) {
     this.targets = {
         operators: [
             'assert-frendship-1-1',
             'assert-frendship-1-n',
             'assert-frendship',
         ],
     };
});

riot.tag2('hearts', '', '', '', function(opts) {
     this.mixin(MIXINS.page);

     this.on('mount', () => { this.draw(); });
     this.on('update', () => { this.draw(); });
});

riot.tag2('hearts_callstacks', '<p> <pre>\ntick! ---+---> heart-core-before\n         |\n         +---> heart-core ---> %heart-core\n         |\n         +---> heart-core-after\n        </pre> </p>', '', '', function(opts) {
});

riot.tag2('hearts_classes', '<section-container title="Classes" data="{classes}"> <section-contents data="{opts.data}"> <table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th>Symbol</th> <th>Description</th> </tr> </thead> <tbody> <tr each="{opts.data}"> <td><a href="{href}">{title}</a></td> <td>{description}</td> </tr> </tbody> </table> </section-contents> </section-container>', '', '', function(opts) {
     this.classes = [
         { href: '#page04/nobiheart',  title: 'NOBIHEART',  description: '' },
         { href: '#page04/karma-pool', title: 'KARMA-POOL', description: 'NOBIHEART のスロットにセットする。NOBIHEARTが処理するためのキューです。' }
     ];
});

riot.tag2('hearts_root', '<section-header title="NOBIT@: Nobit@\'s 心臓"></section-header> <page-tab-with-section core="{page_tabs}" callback="{clickTab}"></page-tab-with-section> <div class="tab-contents-area"> <hearts_tab_home class="hide"></hearts_tab_home> <hearts_tab_heart class="hide"></hearts_tab_heart> <hearts_tab_karma class="hide"></hearts_tab_karma> <hearts_tab_core class="hide"></hearts_tab_core> <hearts_tab_management class="hide"></hearts_tab_management> <hearts_tab_dictionary class="hide"></hearts_tab_dictionary> </div> <section-footer></section-footer>', '', '', function(opts) {
     this.page_tabs = new PageTabs([
         {code: 'readme',     label: 'Home',       tag: 'hearts_tab_home' },
         {code: 'heart',      label: '心臓',       tag: 'hearts_tab_heart' },
         {code: 'core',       label: '心臓核',     tag: 'hearts_tab_core' },
         {code: 'management', label: '心臓の管理', tag: 'hearts_tab_management' },
         {code: 'karma',      label: 'カルマ',     tag: 'hearts_tab_karma' },
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

riot.tag2('hearts_tab_core', '<section class="section"> <div class="container"> <h1 class="title is-4">心臓核のはたらき</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>定期的に鼓動します。</p> <p>鼓動することで情報を友情ネットワークに循環させます。</p> <p>「循環」とは、友情にある情報を友達に渡して友達の処理を実行することです。</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">鼓動へのフック</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>鼓動には前後にフック関数あります。</p> <p>この関数を利用することである程度カスタマイズができると思います。</p> <hearts_callstacks></hearts_callstacks> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Operators:</h1> <div class="contents"> <operators-table targets="{targets.operators}" link-prefix="{location.hash}"></operators-table> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Operators:</h1> <div class="contents"> <variables-table targets="{targets.variables}" link-prefix="{location.hash}"></variables-table> </div> </div> </section>', '', '', function(opts) {
     this.targets = {
         operators: [
             'heart-core',
             '%heart-core',
             'heart-core-before',
             'heart-core-after',
         ],
         variables: [
             '*hook-heart-core-before*',
             '*hook-heart-core-after*',
         ],
     };
});

riot.tag2('hearts_tab_dictionary', '<dictionaries groups="{[\'hearts\']}"></dictionaries>', '', '', function(opts) {
});

riot.tag2('hearts_tab_heart', '<section class="section"> <div class="container"> <h1 class="title is-4">心臓のはたらき</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>心臓は鼓動します。</p> <p>bpm で beat を tick します。</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Operators:</h1> <div class="contents"> <operators-table targets="{targets.operators}" link-prefix="{location.hash}"></operators-table> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Classes:</h1> <div class="contents"> <classes-table targets="{targets.classes}" link-prefix="{location.hash}"></classes-table> </div> </div> </section>', '', '', function(opts) {
     this.targets = {
         operators: [
             'tick!',
             'make-heart',
             'start-heart',
             'stop-heart',
         ],
         classes: [
             'nobiheart',
         ],
     };
});

riot.tag2('hearts_tab_home', '<section class="section"> <div class="container"> <h1 class="title is-4">概要</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>Rhythm の heart クラスを継承しています。</p> <p>Rhythm の heart クラスでその核を定期的に実行します。</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">心臓には核があります。</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>それは心臓の機能そのものです。</p> <p>その核が定期的に実行されます。</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">心臓が流すもの</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>友情を流れるもの。それは情報です。</p> <p>友情を流すものとして心臓があります。</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">心臓が負うもの</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>心臓はカルマを負います。</p> <p>そしてカルマの数だけ核を実行し友情に情報を流します。</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">心臓の数</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>Nobit@ は上級魔族なので八つの心臓を持っています。</p> <p>この心臓が友情に情報を流通させます。</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Operators:</h1> <div class="contents"> <operators-table targets="{targets.operators}" link-prefix="{location.hash}"></operators-table> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Classes:</h1> <div class="contents"> <classes-table targets="{targets.classes}" link-prefix="{location.hash}"></classes-table> </div> </div> </section>', '', '', function(opts) {
     this.targets = {
         operators: [
             'tick!',
             'make-heart',
             'start-heart',
             'stop-heart',
         ],
         classes: [
             'nobiheart',
         ],
     };
});

riot.tag2('hearts_tab_karma', '<section class="section"> <div class="container"> <h1 class="title is-4">概要</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>心臓が友情をドライブするための原動力です。</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">データ構造</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>Pist です。</p> <p><code>make-karma</code> で作成しています。</p> <karma-data-structure-table></karma-data-structure-table> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Operators:</h1> <div class="contents"> <operators-table targets="{targets.operators}" link-prefix="{location.hash}"></operators-table> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Classes:</h1> <div class="contents"> <classes-table targets="{targets.classes}" link-prefix="{location.hash}"></classes-table> </div> </div> </section>', '', '', function(opts) {
     this.targets = {
         operators: [
             'make-karma',
             'make-karma-pool',
             'push-karma',
             'pop-karma',
             'qsize',
             'karma-pool',
             'find-karmas',
             'rm-karma-at-idea-id',
         ],
         classes: [
             'karma-pool',
         ],
     };
});

riot.tag2('hearts_tab_management', '<section class="section"> <div class="container"> <h1 class="title is-4">心臓は八つ用意されています。</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>追加/削除が可能です。</p> <table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th>Code</th> <th>Name</th> <th>Core</th> </tr> </thead> <tbody> <tr each="{heart in hearts}"> <td>{heart.code}</td> <td>{heart.name}</td> <td>{heart.core}</td> </tr> </tbody> </table> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Operators:</h1> <div class="contents"> <operators-table targets="{targets.operators}" link-prefix="{location.hash}"></operators-table> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Variables:</h1> <div class="contents"> <variables-table targets="{targets.variables}" link-prefix="{location.hash}"></variables-table> </div> </div> </section>', '', '', function(opts) {
     this.hearts = [
         { code: ':aon',     name: 'aon',     core: "#'heart-core"},
         { code: ':da',      name: 'da',      core: "#'heart-core"},
         { code: ':tri',     name: 'tri',     core: "#'heart-core"},
         { code: ':ceithir', name: 'ceithir', core: "#'heart-core"},
         { code: ':coig',    name: 'coig',    core: "#'heart-core"},
         { code: ':sia',     name: 'sia',     core: "#'heart-core"},
         { code: ':seachd',  name: 'seachd',  core: "#'heart-core"},
         { code: ':ochd',    name: 'ochd',    core: "#'heart-core"},
     ];
     this.targets = {
         operators: [
             'find-hearts',
             'get-heart',
             'add-heart',
             'rm-heart',
             'start',
         ],
         variables: [
             '*hearts*',
         ],
     };
});

riot.tag2('home-wnqi', '<wbs-tree-list data="{data()}" options="{wbs_list_options}"></wbs-tree-list>', '', '', function(opts) {
     this.wbs_list_options = {
         hide: {
             wbs: {
                 finished: false
             },
             workpackage: {
                 finished: false
             },
         }
     };
     this.data = () => {
         let state = new WNQI().build();
         let options = this.wbs_list_options;

         if (state.projects.list.length==0)
             return [];

         let id = this.opts.start_id;
         return new Wbs().composeTreeFlat(
             state.wbs.ht[id],
             state.wbs,
             state.workpackages,
             state.edges,
             options);
     };
});

riot.tag2('home', '', '', '', function(opts) {
     this.mixin(MIXINS.page);

     this.on('mount', () => { this.draw(); });
     this.on('update', () => { this.draw(); });
});

riot.tag2('home_description', '<section-container title="Dependencies"> <section-contents> <table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th>Dependncy</th> <th>Description</th> </tr> </thead> <tbody> <tr> <td><a href="https://gitlab.common-lisp.net/alexandria/alexandria">alexandria</a></td> <td></td> </tr> <tr> <td><a href="https://github.com/edicl/cl-fad">cl-fad</a></td> <td></td> </tr> <tr> <td><a href="https://github.com/dlowe-net/local-time">local-time</a></td> <td></td> </tr> <tr> <td><a href="https://github.com/oconnore/queues">queues</a></td> <td></td> </tr> <tr> <td><a href="https://github.com/yanqirenshi/shinrabanshou">shinrabanshou</a></td> <td></td> </tr> <tr> <td><a href="https://github.com/yanqirenshi/rhythm">rhythm</a></td> <td></td> </tr> </tbody> </table> </section-contents> </section-container>', '', '', function(opts) {
});

riot.tag2('home_sec_root', '<section-header title="NOBIT@: Home"></section-header> <page-tab-with-section core="{page_tabs}" callback="{clickTab}"></page-tab-with-section> <div class="tab-contents-area"> <home_tab_readme class="hide"></home_tab_readme> <home_tab_installation class="hide"></home_tab_installation> <home_tab_usage class="hide"></home_tab_usage> <home_tab_data-model class="hide"></home_tab_data-model> <home_tab_packages class="hide"></home_tab_packages> <home_tab_classes class="hide"></home_tab_classes> <home_tab_operators class="hide"></home_tab_operators> <home_tab_variables class="hide"></home_tab_variables> </div> <section-footer></section-footer>', '', '', function(opts) {
     this.page_tabs = new PageTabs([
         {code: 'readme',       label: 'README',       tag: 'home_tab_readme' },
         {code: 'installation', label: 'Installation', tag: 'home_tab_installation' },
         {code: 'usage',        label: 'Usage',        tag: 'home_tab_usage' },
         {code: 'data-model',   label: 'Data Model',   tag: 'home_tab_data-model' },
         {code: 'packages',     label: 'Packages',     tag: 'home_tab_packages' },
         {code: 'classes',      label: 'Classes',      tag: 'home_tab_classes' },
         {code: 'operators',    label: 'Operators',    tag: 'home_tab_operators' },
         {code: 'variables',    label: 'Variables',    tag: 'home_tab_variables' },
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

riot.tag2('home_tab_classes', '<section class="section"> <div class="container"> <h1 class="title is-4">List</h1> <h2 class="subtitle"></h2> <div class="contents"> <home-wnqi start_id="{13}"></home-wnqi> </div> </div> </section>', '', '', function(opts) {
});

riot.tag2('home_tab_data-model', '<section class="section"> <div class="container"> <h1 class="title is-4">OverView</h1> <h2 class="subtitle"></h2> <div class="contents"> <div ref="svg-parent" style="padding: 8px;border: 1px solid #eeeeee; border-radius: 8px;"> <svg id="scketchbook"></svg> </div> </div> </div> </section>', '', '', function(opts) {
     this.nodes = [
         { _id: 1, label: { text: 'g*an' } },
         { _id: 2, label: { text: '4neo' } },
         { _id: 3, label: { text: 'nobit@' } },
         { _id: 4, label: { text: 'draem-on' } },
     ];
     let id = 100;
     this.edges = [
         { _id: id++, source: 1, target: 2 },
         { _id: id++, source: 2, target: 3 },
         { _id: id++, source: 3, target: 4 },
     ];

     this.sketcher = null;
     this.painter  = null;

     this.makeSketcher = (w, h) => {
         let camera = {
             look: {
                 at: {
                     x: 0,
                     y: 0.0,
                 },
             },
             scale: 1.3,
         };

         return new Sketcher({
             element: {
                 selector: 'home_tab_data-model svg#scketchbook',
             },
             w: w,
             h: h,
             x: camera.look.at.x,
             y: camera.look.at.y,
             scale: camera.scale,
         });
     };

     this.on('updated', () => {
         this.sketcher = this.makeSketcher(
             this.refs['svg-parent'].clientWidth - 8*2,
             333);
         this.sketcher.underpainting();

         this.painter = new NobitaDocDataModel(this.sketcher.d3Svg());

         let nodes = this.nodes.map(this.painter.makeNode);
         let edges = this.edges;

         this.painter.draw({ list: nodes },
                           { list: this.edges },
                           null);
     });
});

riot.tag2('home_tab_installation', '<section class="section"> <div class="container"> <div class="contents"> <p><pre>\n(ql:quickload :nobit@.graph)\n(ql:quickload :nobit@)\n(ql:quickload :nobit@.api)\n(ql:quickload :nobit@-test)</pre></p> </div> </div> </section>', '', '', function(opts) {
});

riot.tag2('home_tab_operators', '<section class="section"> <div class="container"> <h1 class="title is-4"></h1> <h2 class="subtitle"></h2> <div class="contents"> <home-wnqi start_id="{14}"></home-wnqi> </div> </div> </section>', '', '', function(opts) {
});

riot.tag2('home_tab_packages', '<section class="section"> <div class="container"> <h1 class="title is-4"></h1> <h2 class="subtitle"></h2> <div class="contents" style="padding-left:0px;"> <home-wnqi start_id="{11}"></home-wnqi> </div> </div> </section>', '', '', function(opts) {
     this.wbs_list_options = {
         hide: {
             wbs: {
                 finished: false
             },
             workpackage: {
                 finished: false
             },
         }
     };
     this.data = () => {
         let state = new WNQI().build();
         let options = this.wbs_list_options;

         if (state.projects.list.length==0)
             return [];

         return new Wbs().composeTreeFlat(
             state.wbs.ht[11],
             state.wbs,
             state.workpackages,
             state.edges,
             options);
     };
});

riot.tag2('home_tab_readme', '<section class="section"> <div class="container"> <h1 class="title">Description</h1> <h2 class="subtitle"></h2> <div class="contents"> <h1 class="title"> <ruby> <rb>我的工作是你的工作</rb> <rt>俺の仕事はおまえのもの</rt> </ruby> ・ <ruby> <rb>你的工作是你的工作</rb> <rt>おまえの仕事はおまえのもの</rt> </ruby> </h1> <p>現在のバージョンは 0.0.4 です。</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title">Dependencies</h1> <h2 class="subtitle"></h2> <div class="contents"> <ol> <li>alexandria</li> <li>cl-fad</li> <li>local-time</li> <li>queues / queues.simple-cqueue</li> <li>shinrabanshou / upanishad</li> <li>rhythm</li> </ol> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title">Author</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>Satoshi Iwasaki (yanqirenshi@gmail.com)</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title">Copyright</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>Copyright (c) 2014 Satoshi Iwasaki (yanqirenshi@gmail.com)</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title">License</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>MIT</p> </div> </div> </section>', '', '', function(opts) {
});

riot.tag2('home_tab_usage', '<section class="section"> <div class="container"> <h1 class="title is-4">例： <code>(1 + 2) / (3 * 4) = 1/4</code> をやってみます。</h1> <h2 class="subtitle"></h2> <section class="section"> <div class="container"> <h1 class="title is-4">(0) 準備</h1> <h2 class="subtitle"></h2> <div class="contents"> <p><pre>(in-package :nobit@)\n;; DBの処理開始\n(nobit@.graph:start)\n;; 八つの心臓の鼓動開始\n(nobit@:start)</pre></p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">(1) Nobit@ の Action を定義</h1> <h2 class="subtitle"></h2> <div class="contents"> <p><pre>\n(defun nobi-action-1 (&key graph idea source nobit@)\n  (declare (ignore graph source nobit@))\n  (setf (getf idea :contents)\n        (list :nobit@1 (list 1 3)\n              :nobit@2 nil\n              :nobit@3 nil))\n  idea)\n\n(defun nobi-action-2 (&key graph idea source nobit@)\n  (declare (ignore graph source nobit@))\n  (let ((contents (getf idea :contents)))\n    (setf (getf contents :nobit@2)\n          (+ 2 (first (getf contents :nobit@1)))))\n  idea)\n\n(defun nobi-action-3 (&key graph idea source nobit@)\n  (declare (ignore graph source nobit@))\n  (let ((contents (getf idea :contents)))\n    (setf (getf contents :nobit@3)\n          (* 4 (second (getf contents :nobit@1)))))\n  idea)\n\n(defun nobi-action-4 (&key graph idea source nobit@)\n  (declare (ignore graph source nobit@))\n  (let ((contents (getf idea :contents)))\n    (setf (getf idea :results)\n          (/ (getf contents :nobit@2)\n             (getf contents :nobit@3))))\n  idea)</pre></p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">(2) 友達を定義する</h1> <h2 class="subtitle"></h2> <div class="contents"> <p><pre>\n(defparameter *g*an*     (tx-make-g*an   *graph* :name "ジャ○アン"))\n(defparameter *4neo-1*   (tx-make-4neo   *graph* :name "ス○夫(始)"))\n(defparameter *4neo-2*   (tx-make-4neo   *graph* :name "ス○夫(結)"))\n(defparameter *nobit@-1* (tx-make-nobit@ *graph* :name "ど"    :action #\'nobi-action-1))\n(defparameter *nobit@-2* (tx-make-nobit@ *graph* :name "○"    :action #\'nobi-action-2))\n(defparameter *nobit@-3* (tx-make-nobit@ *graph* :name "え"    :action #\'nobi-action-3))\n(defparameter *nobit@-4* (tx-make-nobit@ *graph* :name "も〜ん" :action #\'nobi-action-4))</pre></p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">(3) 友情を定義する</h1> <h2 class="subtitle"></h2> <div class="contents"> <p><pre>\n(tx-make-frendship *graph* *g*an*     *4neo-1*   :aon)\n(tx-make-frendship *graph* *4neo-1*   *nobit@-1* :aon)\n(tx-make-frendship *graph* *nobit@-1* *nobit@-2* :aon)\n(tx-make-frendship *graph* *nobit@-1* *nobit@-3* :aon)\n(tx-make-frendship *graph* *nobit@-2* *nobit@-4* :aon)\n(tx-make-frendship *graph* *nobit@-3* *nobit@-4* :aon)\n(tx-make-frendship *graph* *nobit@-4* *4neo-2*   :aon)\n(tx-make-frendship *graph* *4neo-2*   *g*an*     :aon)</pre></p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">(4) 処理の実行</h1> <h2 class="subtitle"></h2> <div class="contents"> <p><pre>\n;; G*an が急に思いつく\n(flash-across-ones-mind *graph* *g*an*)</pre></p> </div> </div> </section> </div> </section>', '', '', function(opts) {
});

riot.tag2('home_tab_variables', '<section class="section"> <div class="container"> <h1 class="title is-4"></h1> <h2 class="subtitle"></h2> <div class="contents"> <home-wnqi start_id="{12}"></home-wnqi> </div> </div> </section>', '', '', function(opts) {
});

riot.tag2('home_usage', '<section-container title="Usage"> <section-contents> <p> <pre>\n(in-package :nobit@)\n\n(nobita.graph:start)\n\n(defparameter *g*an* (tx-make-g*an *graph*))\n(defparameter *4neo-1* (tx-make-4neo *graph*))\n(defparameter *4neo-2* (tx-make-4neo *graph*))\n(defparameter *nobit@-1* (tx-make-nobit@ *graph*))\n(defparameter *nobit@-2* (tx-make-nobit@ *graph*))\n(defparameter *nobit@-3* (tx-make-nobit@ *graph*))\n(defparameter *nobit@-4* (tx-make-nobit@ *graph*))\n\n(defparameter *heart* (get-heart :code :aon))\n\n(tx-make-frendship *graph* *g*an* *4neo-1* *heart*)\n(tx-make-frendship *graph* *4neo-1* *nobit@-1* *heart*)\n(tx-make-frendship *graph* *nobit@-1* *nobit@-2* *heart*)\n(tx-make-frendship *graph* *nobit@-1* *nobit@-3* *heart*)\n(tx-make-frendship *graph* *nobit@-2* *nobit@-4* *heart*)\n(tx-make-frendship *graph* *nobit@-3* *nobit@-4* *heart*)\n(tx-make-frendship *graph* *nobit@-4* *4neo-2* *heart*)\n(tx-make-frendship *graph* *4neo-2* *g*an* *heart*)\n                </pre> </p> </section-contents> </section-container>', '', '', function(opts) {
});

riot.tag2('function_xxxxxxxx', '<section class="hero" style="background:#faf8ed;"> <div class="hero-body"> <div class="container"> <h1 class="title">{source.type}: {source.name}</h1> <h2 class="subtitle"> <section-breadcrumb></section-breadcrumb> </h2> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Syntax:</h1> <div class="contents"> <operator-syntax name="{source.name}" args="{source.syntax.args}" results="{source.syntax.results}"> </operator-syntax> </div> <section class="section"> <div class="container"> <h1 class="title is-5">karama(plist)</h1> <div class="contents"> </div> </div> </section> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Arguments:</h1> <div class="contents"> <slots-list slots="{source.args}"></slots-list> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Values:</h1> <div class="contents"> <slots-list slots="{source.values}"></slots-list> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Examples:</h1> <div class="contents"> <p><pre>\n                </pre></p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Affected By:</h1> <div class="contents"> <p>None.</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Exceptional Situations:</h1> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">See Also:</h1> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Notes:</h1> </div> </section>', '', '', function(opts) {
     this.source = {
         type: 'Function',
         name: 'xxxxxxxx',
         syntax: {
             args: ['sequence', 'idea_id', 'graph', 'source', 'friendship'],
             results: "karama(plist)",
         },
         args: [
             { name: 'sequence',      type: '', description: '' },
             { name: 'idea_id',       type: '', description: '' },
             { name: 'graph',         type: '', description: '' },
             { name: 'source',        type: '', description: '' },
             { name: 'friendship',    type: '', description: '' },
         ],
         values: [
             { name: 'karama(plist)', type: '', description: '' },
         ],
     }

});

riot.tag2('function_make-heart', '<section-container title="Function: make-heart"> <section-container title="Description"> <section-contents> </section-contents> </section-container> </section-container>', '', '', function(opts) {
});

riot.tag2('function_make-karma', '<section class="hero" style="background:#faf8ed;"> <div class="hero-body"> <div class="container"> <h1 class="title">{source.type}: {source.name}</h1> <h2 class="subtitle"> <section-breadcrumb></section-breadcrumb> </h2> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Syntax:</h1> <div class="contents"> <operator-syntax name="{source.name}" args="{source.syntax.args}" results="{source.syntax.results}"> </operator-syntax> </div> <section class="section"> <div class="container"> <h1 class="title is-5">karama(plist)</h1> <div class="contents"> </div> </div> </section> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Arguments and Values:</h1> <div class="contents"> <slots-list slots="{source.slots}"></slots-list> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Description:</h1> <div class="contents"> <p>以下の構成のPlist を返します。</p> <idea-data-structure-table></idea-data-structure-table> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Examples:</h1> <div class="contents"> <p><pre>\n                </pre></p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Affected By:</h1> <div class="contents"> <p>None.</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Exceptional Situations:</h1> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">See Also:</h1> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Notes:</h1> </div> </section>', '', '', function(opts) {
     this.source = {
         type: 'Function',
         name: 'MAKE-KARMA',
         syntax: {
             args: ['sequence', 'idea_id', 'graph', 'source', 'friendship'],
             results: "karama(plist)",
         },
         slots: [
             { name: 'sequence',      type: '', description: '' },
             { name: 'idea_id',       type: '', description: '' },
             { name: 'graph',         type: '', description: '' },
             { name: 'source',        type: '', description: '' },
             { name: 'friendship',    type: '', description: '' },
             { name: 'karama(plist)', type: '', description: '' },
         ],
     }

});

riot.tag2('function_start', '<section class="hero" style="background:#faf8ed;"> <div class="hero-body"> <div class="container"> <h1 class="title">{source.type}: {source.name}</h1> <h2 class="subtitle"> <section-breadcrumb></section-breadcrumb> </h2> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Syntax:</h1> <div class="contents"> <operator-syntax name="{source.name}" args="{source.syntax.args}" results="{source.syntax.results}"> </operator-syntax> </div> <section class="section"> <div class="container"> <h1 class="title is-5">karama(plist)</h1> <div class="contents"> </div> </div> </section> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Arguments:</h1> <div class="contents"> <slots-list slots="{source.args}"></slots-list> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Values:</h1> <div class="contents"> <slots-list slots="{source.values}"></slots-list> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Examples:</h1> <div class="contents"> <p><pre>\n                </pre></p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Affected By:</h1> <div class="contents"> <p>None.</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Exceptional Situations:</h1> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">See Also:</h1> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Notes:</h1> </div> </section>', '', '', function(opts) {
     this.source = {
         type: 'Function',
         name: 'start',
         syntax: {
             args: [],
             results: "???",
         },
         args: [],
         values: [
             { name: '???', type: '', description: '' },
         ],
     }
});

riot.tag2('generic-function-action-ex', '<section class="hero" style="background:#faf8ed;"> <div class="hero-body"> <div class="container"> <h1 class="title">{source.type}: {source.name}</h1> <h2 class="subtitle"> <section-breadcrumb></section-breadcrumb> </h2> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Syntax:</h1> <div class="contents"> <p><b>action!</b> <i>graph nobit@ idea source</i> => <i>nil</i></p> </div> <section class="section"> <div class="container"> <h1 class="title is-5">karama(plist)</h1> <div class="contents"> </div> </div> </section> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Arguments and Values:</h1> <div class="contents"> <table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th>Name</th> <th>Type</th> <th>description</th></tr> </thead> <tbody> <tr> <td>graph</td> <td>SHINRA:BANSHOU</td> <td></td> </tr> <tr> <td>nobit@</td> <td>NOBIT@</td> <td></td> </tr> <tr> <td>idea</td> <td>PLIST</td> <td></td> </tr> <tr> <td>source</td> <td>NODE</td> <td></td> </tr> </tbody> </table> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Description:</h1> <div class="contents"> <p>スロット: <code>action</code> に設定されているコードを実行します。</p> <p><code>action</code> が設定されていない場合は引数の <code>idea</code> をそのまま返します。</p> </div> </div> </section>', '', '', function(opts) {
     this.source = {
         type: 'Function',
         name: 'ACTION!',
         syntax: {
             args: ['sequence', 'idea_id', 'graph', 'source', 'friendship'],
             results: "karama(plist)",
         },
     }
});

riot.tag2('generic-function-method-signatures', '<table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th>graph</th> <th>idea</th> <th>source</th> <th>target</th> </tr> </thead> <tbody> <tr each="{d in (opts.source ? opts.source : sample)}"> <td>{d.graph}</td> <td>{d.idea}</td> <td>{d.source}</td> <td>{d.target}</td> </tr> </tbody> </table>', '', '', function(opts) {

     this.sample = [
         { graph: 'shinra:banshou', idea: 'list', source: 't', target: '4neo' },
         { graph: 'shinra:banshou', idea: 'list', source: 't', target: 'friendship' },
         { graph: 'shinra:banshou', idea: 'list', source: 't', target: 'g*an' },
         { graph: 'shinra:banshou', idea: 'list', source: 't', target: 'nobit@' },
     ];
});

riot.tag2('generic-function_find-karmas', '<section-container title="Generic function: find-karmas"> <section-contents no="4" title="Syntax:"> <section-contents> <operator-syntax name="find-karmas" args="{[\'karma-pool\', \'idea-id\']}"> </section-contents> </section-contents> <section-contents no="4" title="Method Signatures:"> </section-contents> <section-contents no="4" title="Arguments and Values:"> </section-contents> <section-contents no="4" title="Description:"> </section-contents> </section-container>', '', '', function(opts) {
});

riot.tag2('generic-function_flash-across-ones-mind', '<section class="hero" style="background:#faf8ed;"> <div class="hero-body"> <div class="container"> <h1 class="title">{source.type}: {source.name}</h1> <h2 class="subtitle"> <section-breadcrumb></section-breadcrumb> </h2> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Syntax:</h1> <div class="contents"> <operator-syntax name="{source.name}" args="{source.syntax.args}" results="{source.syntax.results}"> </operator-syntax> </div> <section class="section"> <div class="container"> <h1 class="title is-5">karama(plist)</h1> <div class="contents"> </div> </div> </section> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Method Signatures:</h1> <div class="contents"> <generic-function-method-signatures source="{source.method.signatures}"> </generic-function-method-signatures> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Arguments:</h1> <div class="contents"> <slots-list slots="{source.args}"></slots-list> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Values:</h1> <div class="contents"> <slots-list slots="{source.values}"></slots-list> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Examples:</h1> <div class="contents"> <p><pre>\n                </pre></p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Affected By:</h1> <div class="contents"> <p>None.</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Exceptional Situations:</h1> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">See Also:</h1> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Notes:</h1> </div> </section>', '', '', function(opts) {
     this.source = {
         type: 'Generic Function',
         name: 'flash-across-ones-mind',
         syntax: {
             args: ['graph', 'g*an'],
             results: "???",
         },
         args: [
             { name: 'graph', type: '', description: '' },
             { name: 'g*an',  type: '', description: '' },
         ],
         values: [
             { name: '???', type: '', description: '' },
         ],
         method: {
             signatures: [
                 { graph: 'shinra:banshou', g_an: 'g*an' },
             ]
         }
     }
});

riot.tag2('generic-function_pop-karma', '<section-container title="Generic function: pop-karma"> <section-contents no="4" title="Syntax:"> <section-contents> <operator-syntax name="pop-karma" keys="{[\'karma-pool\']}" results="{\'queue\'}"> </section-contents> </section-contents> <section-contents no="4" title="Method Signatures:"> </section-contents> <section-contents no="4" title="Arguments and Values:"> </section-contents> <section-contents no="4" title="Description:"> </section-contents> </section-container>', '', '', function(opts) {
});

riot.tag2('generic-function_propagation', '<section-container title="Generic function: propagation(spread)"> <section-contents no="4" title="Syntax:"> <section-contents> <operator-syntax name="spread" args="{[\'graph\', \'idea\', \'source\', \'target\']}"></operator-syntax> </section-contents> </section-contents> <section-contents no="4" title="Method Signatures:"> <section-contents> <generic-function_propagation_method-signatures></generic-function_propagation_method-signatures> </section-contents> </section-contents> <section-contents no="4" title="Arguments and Values:"> <section-container no="5" title="graph"> <section-contents> <p></p> </section-contents> </section-container> <section-container no="5" title="idea"> <section-contents> <p></p> </section-contents> </section-container> <section-container no="5" title="source"> <section-contents> <p></p> </section-contents> </section-container> <section-container no="5" title="target"> <section-contents> <p></p> </section-contents> </section-container> </section-contents> <generic-function_propagation_description></generic-function_propagation_description> </section-container>', '', '', function(opts) {
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

riot.tag2('generic-function_push-karma', '<section-container no="3" title="Generic function: push-karma"> <section-contents no="4" title="Syntax:"> <section-contents> <operator-syntax name="push-karma" keys="{[\'idea_id\', \'graph\', \'source\', \'friendship\']}" results="{null}"> </section-contents> </section-contents> <section-contents no="4" title="Method Signatures:"> </section-contents> <section-contents no="4" title="Arguments and Values:"> </section-contents> <section-contents no="4" title="Description:"> </section-contents> </section-container>', '', '', function(opts) {
});

riot.tag2('generic-function_qsize', '<section-container title="Generic function: qsize"> <section-contents no="4" title="Syntax:"> <section-contents> <operator-syntax name="qsize" args="{[\'pool\']}" results="queues size"> </section-contents> </section-contents> <section-contents no="4" title="Method Signatures:"> </section-contents> <section-contents no="4" title="Arguments and Values:"> </section-contents> <section-contents no="4" title="Description:"> </section-contents> </section-container>', '', '', function(opts) {
});

riot.tag2('generic-function_rm-karma-at-idea-id', '<section-container title="Generic function: rm-karma-at-idea-id"> </section-container> <section-contents no="4" title="Syntax:"> <section-contents> <operator-syntax name="rm-karma-at-idea-id" args="{[\'karam-pool\', \'idea-id\']}"> </section-contents> </section-contents> <section-contents no="4" title="Method Signatures:"> </section-contents> <section-contents no="4" title="Arguments and Values:"> </section-contents> <section-contents no="4" title="Description:"> </section-contents>', '', '', function(opts) {
});

riot.tag2('generic-function_spread', '<section class="hero" style="background:#faf8ed;"> <div class="hero-body"> <div class="container"> <h1 class="title">{source.type}: {source.name}</h1> <h2 class="subtitle"> <section-breadcrumb></section-breadcrumb> </h2> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Syntax:</h1> <div class="contents"> <operator-syntax name="{source.name}" args="{source.syntax.args}" results="{source.syntax.results}"> </operator-syntax> </div> <section class="section"> <div class="container"> <h1 class="title is-5">???</h1> <div class="contents"> </div> </div> </section> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Method Signatures:</h1> <div class="contents"> <generic-function-method-signatures source="{source.method.signatures}"> </generic-function-method-signatures> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Arguments:</h1> <div class="contents"> <slots-list slots="{source.args}"></slots-list> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Values:</h1> <div class="contents"> <slots-list slots="{source.values}"></slots-list> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Examples:</h1> <div class="contents"> <p><pre>\n                </pre></p> </div> </div> </section>', '', '', function(opts) {
     this.source = {
         type: 'Generic Function',
         name: 'SPREAD',
         syntax: {
             args: ['graph', 'idea', 'source', 'target'],
             results: "???",
         },
         args: [
             { name: 'graph',  type: 'Object', description: '' },
             { name: 'idea',   type: 'Plist',  description: '' },
             { name: 'source', type: 'Object', description: '' },
             { name: 'target', type: 'Object', description: '' },
         ],
         values: [],
         method: {
             signatures: [
                 { graph: 'shinra:banshou', idea: 'list', source: 't', target: '4neo' },
                 { graph: 'shinra:banshou', idea: 'list', source: 't', target: 'friendship' },
                 { graph: 'shinra:banshou', idea: 'list', source: 't', target: 'g*an' },
                 { graph: 'shinra:banshou', idea: 'list', source: 't', target: 'nobit@' },
             ]
         }
     }
});

riot.tag2('generic-function_spreads', '<section class="hero" style="background:#faf8ed;"> <div class="hero-body"> <div class="container"> <h1 class="title">{source.type}: {source.name}</h1> <h2 class="subtitle"> <section-breadcrumb></section-breadcrumb> </h2> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Syntax:</h1> <div class="contents"> <operator-syntax name="{source.name}" args="{source.syntax.args}" results="{source.syntax.results}"> </operator-syntax> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Method Signatures:</h1> <div class="contents"> <generic-function-method-signatures source="{source.method.signatures}"> </generic-function-method-signatures> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Arguments:</h1> <div class="contents"> <slots-list slots="{source.args}"></slots-list> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Values:</h1> <div class="contents"> <slots-list slots="{source.values}"></slots-list> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">Examples:</h1> <div class="contents"> <p><pre>\n                </pre></p> </div> </div> </section>', '', '', function(opts) {
     this.source = {
         type: 'Generic Function',
         name: 'SPREADS',
         syntax: {
             args: ['graph', 'idea', 'source', 'targets'],
             results: "???",
         },
         args: [
             { name: 'graph',   type: 'Object', description: '' },
             { name: 'idea',    type: 'Plist',  description: '' },
             { name: 'source',  type: 'Object', description: '' },
             { name: 'targets', type: 'List',   description: '' },
         ],
         values: [],
         method: {
             signatures: [
                 { graph: 'shinra:banshou', idea: 'list', source: 't', target: 'list' },
             ]
         }
     }
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

riot.tag2('propagation_root', '<section-header title="NOBIT@: ropagation"></section-header> <page-tab-with-section core="{page_tabs}" callback="{clickTab}"></page-tab-with-section> <div class="tab-contents-area"> <propagation_tab_home class="hide"></propagation_tab_home> <propagation_tab_from-friends class="hide"></propagation_tab_from-friends> <propagation_tab_from-friendships class="hide"></propagation_tab_from-friendships> <propagation_tab_dictionary class="hide"></propagation_tab_dictionary> </div> <section-footer></section-footer>', '', '', function(opts) {
     this.page_tabs = new PageTabs([
         {code: 'home',        label: 'Home',           tag: 'propagation_tab_home' },
         {code: 'friends',     label: '友達からの伝播', tag: 'propagation_tab_from-friends' },
         {code: 'friendships', label: '友情からの伝播', tag: 'propagation_tab_from-friendships' },
         {code: 'dictionary',  label: 'Dictionary',     tag: 'propagation_tab_dictionary' },
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

riot.tag2('propagation_tab_from-friends', '', '', '', function(opts) {
});

riot.tag2('propagation_tab_from-friendships', '', '', '', function(opts) {
});

riot.tag2('propagation_tab_home', '<section class="section"> <div class="container"> <h1 class="title is-4">伝播の概要</h1> <section class="section"> <div class="container"> <h1 class="title is-4">友達からの伝播</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>友達は処理が終ったら友情へ情報を伝播させます。</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">友情からの伝播</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>友情は友達から伝播されたデータを心臓のカルマに追加します。</p> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title is-4">心臓のはたらき</h1> <h2 class="subtitle"></h2> <div class="contents"> <p>心臓は鼓動のたびにカルマを処理します。</p> <p>処理する順番は FIFO です。</p> <p>詳細は <b><a href="#hearts">Page:心臓</a></b> を参照してください。</p> </div> </div> </section> </div> </section>', '', '', function(opts) {
});

riot.tag2('variable_hearts', '<section-container title="Variable: *hearts*"> <section-container title="Operators"> <section-container title="Function: get-heart" no="4"> </section-container> <section-container title="Function: add-heart" no="4"> </section-container> <section-container title="Function: rm-heart" no="4"> </section-container> </section-container> </section-container>', '', '', function(opts) {
});

riot.tag2('class-10000029', '', '', '', function(opts) {
});

riot.tag2('class-10000030', '', '', '', function(opts) {
});

riot.tag2('class-10000031', '', '', '', function(opts) {
});

riot.tag2('class-10000032', '', '', '', function(opts) {
});

riot.tag2('class-10000033', '', '', '', function(opts) {
});

riot.tag2('class-10000034', '', '', '', function(opts) {
});

riot.tag2('class-10000035', '', '', '', function(opts) {
});

riot.tag2('class-10000036', '', '', '', function(opts) {
});

riot.tag2('class-10000037', '', '', '', function(opts) {
});

riot.tag2('operator-10000038', '', '', '', function(opts) {
});

riot.tag2('operator-10000039', '', '', '', function(opts) {
});

riot.tag2('operator-10000040', '', '', '', function(opts) {
});

riot.tag2('operator-10000041', '', '', '', function(opts) {
});

riot.tag2('operator-10000042', '', '', '', function(opts) {
});

riot.tag2('operator-10000043', '', '', '', function(opts) {
});

riot.tag2('operator-10000044', '', '', '', function(opts) {
});

riot.tag2('operator-10000045', '', '', '', function(opts) {
});

riot.tag2('operator-10000046', '', '', '', function(opts) {
});

riot.tag2('operator-10000047', '', '', '', function(opts) {
});

riot.tag2('operator-10000048', '', '', '', function(opts) {
});

riot.tag2('operator-10000049', '', '', '', function(opts) {
});

riot.tag2('operator-10000050', '', '', '', function(opts) {
});

riot.tag2('operator-10000051', '', '', '', function(opts) {
});

riot.tag2('operator-10000052', '', '', '', function(opts) {
});

riot.tag2('operator-10000053', '', '', '', function(opts) {
});

riot.tag2('operator-10000054', '', '', '', function(opts) {
});

riot.tag2('operator-10000055', '', '', '', function(opts) {
});

riot.tag2('operator-10000056', '', '', '', function(opts) {
});

riot.tag2('operator-10000057', '', '', '', function(opts) {
});

riot.tag2('operator-10000058', '', '', '', function(opts) {
});

riot.tag2('operator-10000059', '', '', '', function(opts) {
});

riot.tag2('operator-10000060', '', '', '', function(opts) {
});

riot.tag2('operator-10000061', '', '', '', function(opts) {
});

riot.tag2('operator-10000062', '', '', '', function(opts) {
});

riot.tag2('operator-10000063', '', '', '', function(opts) {
});

riot.tag2('operator-10000064', '', '', '', function(opts) {
});

riot.tag2('operator-10000065', '', '', '', function(opts) {
});

riot.tag2('operator-10000066', '', '', '', function(opts) {
});

riot.tag2('operator-10000067', '', '', '', function(opts) {
});

riot.tag2('operator-10000068', '', '', '', function(opts) {
});

riot.tag2('operator-10000069', '', '', '', function(opts) {
});

riot.tag2('operator-10000070', '', '', '', function(opts) {
});

riot.tag2('operator-10000071', '', '', '', function(opts) {
});

riot.tag2('operator-10000072', '', '', '', function(opts) {
});

riot.tag2('operator-10000073', '', '', '', function(opts) {
});

riot.tag2('operator-10000074', '', '', '', function(opts) {
});

riot.tag2('operator-10000075', '', '', '', function(opts) {
});

riot.tag2('operator-10000076', '', '', '', function(opts) {
});

riot.tag2('package-10000000', '', '', '', function(opts) {
});

riot.tag2('package-10000001', '', '', '', function(opts) {
});

riot.tag2('package-10000002', '', '', '', function(opts) {
});

riot.tag2('package-10000003', '', '', '', function(opts) {
});

riot.tag2('package-10000004', '', '', '', function(opts) {
});

riot.tag2('package-10000005', '', '', '', function(opts) {
});

riot.tag2('package-10000006', '', '', '', function(opts) {
});

riot.tag2('package-10000007', '', '', '', function(opts) {
});

riot.tag2('package-10000008', '', '', '', function(opts) {
});

riot.tag2('package-10000009', '', '', '', function(opts) {
});

riot.tag2('package-10000010', '', '', '', function(opts) {
});

riot.tag2('package-10000011', '', '', '', function(opts) {
});

riot.tag2('package-10000012', '', '', '', function(opts) {
});

riot.tag2('variable-10000013', '', '', '', function(opts) {
});

riot.tag2('variable-10000014', '', '', '', function(opts) {
});

riot.tag2('variable-10000015', '', '', '', function(opts) {
});

riot.tag2('variable-10000016', '', '', '', function(opts) {
});

riot.tag2('variable-10000017', '', '', '', function(opts) {
});

riot.tag2('variable-10000018', '', '', '', function(opts) {
});

riot.tag2('variable-10000019', '', '', '', function(opts) {
});

riot.tag2('variable-10000020', '', '', '', function(opts) {
});

riot.tag2('variable-10000021', '', '', '', function(opts) {
});

riot.tag2('variable-10000022', '', '', '', function(opts) {
});

riot.tag2('variable-10000023', '', '', '', function(opts) {
});

riot.tag2('variable-10000024', '', '', '', function(opts) {
});

riot.tag2('variable-10000025', '', '', '', function(opts) {
});

riot.tag2('variable-10000026', '', '', '', function(opts) {
});

riot.tag2('variable-10000027', '', '', '', function(opts) {
});

riot.tag2('variable-10000028', '', '', '', function(opts) {
});
