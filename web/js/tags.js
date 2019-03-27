riot.tag2('app-page-area', '', '', '', function(opts) {
     this.draw = () => {
         if (this.opts.route)
             ROUTER.draw(this, STORE.get('site.pages'), this.opts.route);
     }
     this.on('mount', () => {
         this.draw();
     });
     this.on('update', () => {
         this.draw();
     });
});

riot.tag2('app', '<github-link fill="#BDB04F" color="#fff" href="https://gitlab.com/yanqirenshi/nobita"></github-link> <menu-bar brand="{{label:\'N\'}}" site="{site()}" moves="{[]}"></menu-bar> <app-page-area></app-page-area>', 'app > .page { width: 100vw; overflow: hidden; display: block; } app .hide,[data-is="app"] .hide{ display: none; }', '', function(opts) {
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

     this.on('mount', () => {
         ACTIONS.movePage({ route: [STORE.get('site.active_page')] });
     });
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

riot.tag2('gitlab-link', '<a id="fork" target="_blank" title="Fork on gitlab" href="{opts.href ? opts.href : \'#\'}" class="gitlab-corner"> <svg> <g> <path d="M26.6,49.3L2.4,31.7c-0.3-0.2-0.6-0.6-0.7-1c-0.1-0.4-0.1-0.8,0-1.2L4.5,21L26.6,49.3z M11.9,3.9L17.4,21H4.5l5.5-17.1c0.1-0.4,0.5-0.6,0.9-0.6C11.5,3.2,11.8,3.5,11.9,3.9z M17.4,21h18.4l-9.2,28.3L17.4,21z M51.6,29.6c0.1,0.4,0.1,0.8,0,1.2c-0.1,0.4-0.4,0.7-0.7,1L26.6,49.3L48.7,21L51.6,29.6z M48.7,21H35.9l5.5-17.1c0.1-0.4,0.5-0.6,0.9-0.6c0.5,0,0.8,0.2,0.9,0.6L48.7,21z"></path> </g> <g></g> <g></g> <g></g> <g></g> <g></g> <g></g> <g></g> <g></g> <g></g> <g></g> <g></g> </svg> </a>', 'gitlab-link > .gitlab-corner > svg { position: fixed; top: 0; border: 0; right: 0; }', '', function(opts) {
});

riot.tag2('menu-bar', '<aside class="menu"> <p ref="brand" class="menu-label" riot-style="font-size: {opts.brand.label>1 ? \'12px\' : \'14px\'};" onclick="{clickBrand}"> {opts.brand.label} </p> <ul class="menu-list"> <li each="{opts.site.pages}"> <a class="{opts.site.active_page==code ? \'is-active\' : \'\'}" href="{\'#\' + code}" riot-style="font-size: {menu_label.length>1 ? \'12px\' : \'14px\'};"> {menu_label} </a> </li> </ul> </aside> <div class="move-page-menu hide" ref="move-panel"> <p each="{moves()}"> <a href="{href}">{label}</a> </p> </div>', 'menu-bar .move-page-menu { z-index: 666665; background: #ffffff; position: fixed; left: 55px; top: 0px; min-width: 111px; height: 100vh; box-shadow: 2px 0px 8px 0px #e0e0e0; padding: 22px 55px 22px 22px; } menu-bar .move-page-menu.hide { display: none; } menu-bar .move-page-menu > p { margin-bottom: 11px; } menu-bar > .menu { z-index: 666666; height: 100vh; width: 55px; padding: 11px 0px 11px 11px; position: fixed; left: 0px; top: 0px; background: #BDB04F; } menu-bar .menu-label, menu-bar .menu-list a { padding: 0; width: 33px; height: 33px; text-align: center; margin-top: 8px; border-radius: 3px; background: none; color: #ffffff; font-weight: bold; padding-top: 7px; } menu-bar .menu-label,[data-is="menu-bar"] .menu-label{ background: #ffffff; color: #BDB04F; } menu-bar .menu-label.open,[data-is="menu-bar"] .menu-label.open{ background: #ffffff; color: #BDB04F; width: 45px; border-radius: 3px 0px 0px 3px; text-shadow: 0px 0px 1px #eee; padding-right: 11px; } menu-bar .menu-list a.is-active { width: 45px; padding-right: 11px; border-radius: 3px 0px 0px 3px; background: #ffffff; color: #333333; }', '', function(opts) {
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
         return;

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

riot.tag2('friends', '<section class="hero"> <div class="hero-body"> <div class="container"> <h1 class="title">友達</h1> <h2 class="subtitle">。。。皆は友達怖くない</h2> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title">一覧</h1> <h2 class="subtitle"></h2> <div class="contents"> <table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th rowspan="2">Type</th> <th rowspan="2">ID</th> <th rowspan="2">Name</th> <th rowspan="1">Action</th> </tr> <tr> <th>Size</th> </tr> </thead> <tbody> <tr each="{friend in friends()}"> <td>{friend._class}</td> <td>{friend._id}</td> <td>{friend.name}</td> <td>{friend.action}</td> </tr> </tbody> </table> </div> </div> </section>', 'friends { display: block; margin-left: 55px; }', '', function(opts) {
     this.friends = () => {
         return STORE.state().toJS().nodes.list;
     };
     STORE.subscribe((action) => {
         if (action.type=='FETCHED-NODES')
             this.update();
     });
});

riot.tag2('nobita', '<section class="section"> <div class="container"> <h1 class="title">Nobit@</h1> <h2 class="subtitle"> </h2> </div> </section>', '', '', function(opts) {
});

riot.tag2('friendship', '<section class="hero"> <div class="hero-body"> <div class="container"> <h1 class="title">友情</h1> <h2 class="subtitle">けっして切れない鎖</h2> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title">List</h1> <h2 class="subtitle"></h2> <div class="contents"> <table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th rowspan="2">id</th> <th rowspan="2">distance</th> <th rowspan="2">index</th> <th colspan="2">Source</th> <th colspan="2">target</th> </tr> <tr> <th>id</th> <th>name</th> <th>id</th> <th>name</th> </tr> </thead> <tbody> <tr each="{obj in sources()}"> <td>{obj._id}</td> <td>{obj.distance}</td> <td>{obj.index}</td> <td>{obj.source._id}</td> <td>{obj.source.name}</td> <td>{obj.target._id}</td> <td>{obj.target.name}</td> </tr> </tbody> </table> </div> </div> </section>', '', '', function(opts) {
     this.sources = () => {
         return STORE.get('edges.list');
     };
});

riot.tag2('hearts', '<section class="hero"> <div class="hero-body"> <div class="container"> <h1 class="title">心臓</h1> <h2 class="subtitle"></h2> </div> </div> </section> <section class="section"> <div class="container"> <h1 class="title">一覧</h1> <h2 class="subtitle"></h2> <div class="contents"> <table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th rowspan="2">Name</th> <th rowspan="2">Bpm</th> <th rowspan="2">Times</th> <th rowspan="1">Queue</th> </tr> <tr> <th>Size</th> </tr> </thead> <tbody> <tr each="{heart in hearts()}"> <td>{heart.name}</td> <td>{heart.bpm}</td> <td>{heart.times}</td> <td>{heart.queue.SIZE}</td> </tr> </tbody> </table> </div> </div> </section>', 'hearts_sec_root { display: block; margin-left: 55px; }', '', function(opts) {
     this.hearts = () => {
         let store = STORE.state().toJS().hearts;
         return store ? store : [];
     }
     this.on('mount', () => {
         ACTIONS.fetchHearts();
     });
     STORE.subscribe((action) => {
         if (action.type=='FETCHED-HEARTS')
             this.update();
     });
});

riot.tag2('school-district_basic', '<h1 class="title is-4">Basic</h1> <div> <table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th>Name</th> <td>{name()}</td> </tr> <tr> <th>id</th> <td>{id()}</td> </tr> <tr> <th>Class</th> <td>{cls()}</td> </tr> </thead> </table> <div> <button class="button" onclick="{clickMoveView}">照会</button> </div> </div>', 'school-district_basic { display: block; margin-bottom: 22px; } school-district_basic > h1.title { margin-bottom: 11px; } school-district_basic > div { padding-left: 22px; }', '', function(opts) {
     this.clickMoveView = () => {
         let path = this.path() + '/' + this.opts.source._id;

         ACTIONS.moveSchoolDistrictFriendView(path);
     };
     this.path = () => {
         if (!this.opts.source)
             return null;

         let cls = this.opts.source._class;

         let node = ''
         if (cls=='G*AN')
             node = 'g_ans'
         if (cls=='4NEO')
             node = '4neos';
         if (cls=='NOBIT@')
             node = 'nobitas'

         return '#school-district/' + node;
     };
     this.id = () => {
         return this.opts.source ? this.opts.source._id : '';
     };
     this.cls = () => {
         return this.opts.source ? this.opts.source._class : '';
     };
     this.name = () => {
         return this.opts.source ? this.opts.source.name : '';
     };
});

riot.tag2('school-district_inspector', '<section class="section" style="padding-top: 22px;"> <div class="container"> <h1 class="title">{title()}</h1> <div ref="contents"> </div> </div> </section>', 'school-district_inspector { display: block; position: fixed; right: 0; top: 0; height: 100vh; min-width: 222px; max-width: 44%; background: #fff; box-shadow: 0px 0px 22px #333333; } school-district_inspector .hide { display: none; }', 'class="{hide()}"', function(opts) {
     this.tagData = {
         'G*AN':   'school-district_g-an',
         '4NEO':   'school-district_4neo',
         'NOBIT@': 'school-district_nobita',
     }
     this.on('update', () => {
         let nobita = new Nobita();

         nobita.switchSchoolDistrictInspectorContents ({
             data: this.opts.source,
             root: this.refs.contents,
             place: 'school-district_inspector div[ref=contents]',
             tagData: this.tagData,
         });
     });

     this.title = () => {
         if (!this.opts.source)
             return '?????????';

         return this.opts.source._class;
     };
     this.hide = () => {
         return this.opts.source ? '' : 'hide';
     };
});

riot.tag2('school-district_location', '<h1 class="title is-4">Location</h1> <div> <table class="table is-bordered is-striped is-narrow is-hoverable"> <thead> <tr> <th></th> <th>DB</th> <th>Now</th> </tr> </thead> <tbody> <tr> <th>X</th> <td>{val(\'x\')}</td> <td>{val(\'x.now\')}</td> </tr> <tr> <th>Y</th> <td>{val(\'y\')}</td> <td>{val(\'y.now\')}</td> </tr> <tr> <th>Z</th> <td>{val(\'z\')}</td> <td>{val(\'z.now\')}</td> </tr> <tr> <th>Hold</th> <td colspan="2" class="hold-operators {val(\'hold\')}"> <button class="button is-primary is-small {holdButtunsHide(\'hold\')}" onclick="{clickHold}"> 固定する </button> <button class="button is-warning is-small {holdButtunsHide(\'unhold\')}" onclick="{clickUnHold}"> 固定解除 </button> </td> </tr> </tbody> </table> </div>', 'school-district_location { display: block; margin-bottom: 22px; } school-district_location > h1.title { margin-bottom: 11px; } school-district_location > div { padding-left: 22px; }', '', function(opts) {
     this.clickHold = () => {
         this.opts.source.location.hold = true;
         this.opts.source.location.x    = this.opts.source.x;
         this.opts.source.location.y    = this.opts.source.y;
         this.opts.source.location.z    = this.opts.source.z;

         this.opts.source.fx = this.opts.source.x;
         this.opts.source.fy = this.opts.source.y;

         ACTIONS.saveNodeLocation(this.opts.source);
     };
     this.clickUnHold = () => {
         this.opts.source.location.hold = false;
         this.opts.source.location.x    = 0;
         this.opts.source.location.y    = 0;
         this.opts.source.location.z    = 0;

         delete this.opts.source.fx
         delete this.opts.source.fy

         ACTIONS.saveNodeLocation(this.opts.source);
     };

     this.holdButtunsHide = (v) => {
         let data = this.opts.source;
         if (!data)
             return 'hide';

         if (v=='hold' && data.location.hold)
             return 'hide'

         if (v=='unhold' && !data.location.hold)
             return 'hide'

         return '';
     };
     this.val = (key) => {
         if (!this.opts.source)
             return '';

         let val = this.opts.source ? this.opts.source[key] : null;

         if (key=='x' || key=='y' || key=='z') {
             let location = this.opts.source.location;
             let val = location[key];

             if (val || val==0) {
                 return Math.floor(val*100)/100;
             } else {
                 return '---';
             }
         }

         if (key=='x.now' || key=='y.now' || key=='z.now') {
             let location = this.opts.source;
             let k = key.split('.')[0];
             let val = location[k];

             if (val || val==0) {
                 return Math.floor(val*100)/100;
             } else {
                 return '---';
             }
         }

         if (key=='hold') {
             let val = this.opts.source.location.hold;
             return val ? 'hold' : '';
         }

         return val
     };
});

riot.tag2('network-graph', '<svg></svg>', '', '', function(opts) {
     let nobita = new Nobita({
         callbacks: {
             node: {
                 click: (data, event) => {
                     ACTIONS.selectSchoolDistrictGraphNode(data);
                 }
             }
         }
     });

     this.d3svg = null;

     this.on('mount', () => {
         let root = this.root;

         let painter = new Sketcher({
             element: {
                 selector: 'network-graph svg',
             },
             x: 0,
             y: 0,
             w: window.innerWidth,
             h: window.innerHeight,
             scale: 6.0,
             callbacks: {
                 moveEndSvg: null,
                 zoomSvg: null,
                 clickSvg: () => {
                     ACTIONS.clearSelectSchoolDistrict();
                 },
             }
         });

         this.d3svg = painter.makeD3Svg();
         painter.makeBases(this.d3svg, [
             { _id: -10, code: 'lines' },
             { _id:  -5, code: 'nodes' },
         ])
         painter.drawBackground(this.d3svg);

         let nodes = STORE.state().get('nodes');
         let edges = STORE.state().get('edges');

         nobita.d3svg(this.d3svg);

         nobita
             .prepare()
             .draw(nodes, edges);
     });
});

riot.tag2('school-district', '<network-graph callback="{callbackGraph}"></network-graph> <school-district_inspector source="{inspectorSource()}"></school-district_inspector>', '', '', function(opts) {
     this.inspectorSource = () => {
         let state = STORE.state().get('school');

         return state.district.select.node;
     };

     STORE.subscribe((action) => {
         if (action.type=='SELECTED-SCHOOL-DISTRICT-GRAPH-NODE')
             this.tags['school-district_inspector'].update();

         if (action.type=='CLEARED-SELECT-SCHOOL-DISTRICT')
             this.tags['school-district_inspector'].update();
     });
});

riot.tag2('school-district_4neo', '<school-district_basic source="{opts.source}"></school-district_basic> <school-district_location source="{opts.source}"></school-district_location>', '', '', function(opts) {
});

riot.tag2('school-district_g-an', '<school-district_basic source="{opts.source}"></school-district_basic> <school-district_location source="{opts.source}"></school-district_location>', '', '', function(opts) {
});

riot.tag2('school-district_nobita', '<school-district_basic source="{opts.source}"></school-district_basic> <school-district_location source="{opts.source}"></school-district_location> <h1 class="title is-4">Action</h1> <div style="padding-left:22px;"> <p>{action()}</p> </div>', '', '', function(opts) {
     this.action = () => {
         return this.opts.source ? this.opts.source.action : '';
     };
});
