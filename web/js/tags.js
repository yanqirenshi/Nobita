riot.tag2('app', '<menu-bar brand="{{label:\'N\'}}" site="{site()}" moves="{[]}"></menu-bar> <div ref="page-area"></div>', 'app > .page { width: 100vw; height: 100vh; overflow: hidden; display: block; } app .hide,[data-is="app"] .hide{ display: none; }', '', function(opts) {
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

riot.tag2('menu-bar', '<aside class="menu"> <p ref="brand" class="menu-label" onclick="{clickBrand}"> {opts.brand.label} </p> <ul class="menu-list"> <li each="{opts.site.pages}"> <a class="{opts.site.active_page==code ? \'is-active\' : \'\'}" href="{\'#\' + code}"> {menu_label} </a> </li> </ul> </aside> <div class="move-page-menu hide" ref="move-panel"> <p each="{moves()}"> <a href="{href}">{label}</a> </p> </div>', 'menu-bar .move-page-menu { z-index: 666665; background: #fdeff2; position: fixed; left: 55px; top: 0px; min-width: 111px; height: 100vh; box-shadow: 2px 0px 8px 0px #e0e0e0; padding: 22px 55px 22px 22px; } menu-bar .move-page-menu.hide { display: none; } menu-bar .move-page-menu > p { margin-bottom: 11px; } menu-bar > .menu { z-index: 666666; height: 100vh; width: 55px; padding: 11px 0px 11px 11px; position: fixed; left: 0px; top: 0px; background: #BDB04F; } menu-bar .menu-label, menu-bar .menu-list a { padding: 0; width: 33px; height: 33px; text-align: center; margin-top: 8px; border-radius: 3px; background: none; color: #ffffff; font-weight: bold; padding-top: 7px; font-size: 14px; } menu-bar .menu-label,[data-is="menu-bar"] .menu-label{ background: #fdeff2; color: #BDB04F; } menu-bar .menu-label.open,[data-is="menu-bar"] .menu-label.open{ background: #fdeff2; color: #BDB04F; width: 44px; border-radius: 3px 0px 0px 3px; text-shadow: 0px 0px 1px #eee; padding-right: 11px; } menu-bar .menu-list a.is-active { width: 44px; padding-right: 11px; border-radius: 3px 0px 0px 3px; background: #ffffff; color: #333333; }', '', function(opts) {
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

riot.tag2('network-graph', '<svg></svg>', '', '', function(opts) {
     this.d3svg = null;
     this.d3nodes = new d3Nodes();
     this.d3lines = new d3Lines();
     this.simulation = d3.forceSimulation()
                         .force("link", d3.forceLink().id(function(d) {
                             return d._id;
                         }))
                         .force("charge", d3.forceManyBody())
                         .force("center", d3.forceCenter(window.innerWidth / 2, window.innerHeight / 2));

     this.on('mount', () => {
         let root = this.root;

         this.d3svg = new D3Svg({
             d3: d3,
             svg: d3.select("network-graph svg"),
             x: 0,
             y: 0,
             w: window.innerWidth,
             h: window.innerHeight,
             scale: 1.0
         });

         let svg = this.d3svg.Svg();

         svg.selectAll('g.lines')
            .data([{_id:-2, code: 'nodes'}])
            .enter()
            .append('g')
            .attr('class','lines');

         svg.selectAll('g.nodes')
            .data([{_id:-1, code: 'nodes'}])
            .enter()
            .append('g')
            .attr('class','nodes');

         var marker = svg.append("defs")
                         .append("marker")
                         .attr('id', "arrowhead")
                         .attr('refX', 53)
                         .attr('refY', 2)
                         .attr('markerWidth', 8)
                         .attr('markerHeight', 8)
                         .attr('orient', 'auto');

         marker.append("path")
               .attr('d', "M 0,0 V 4 L4,2 Z")
               .attr('fill', "#000");

         ACTIONS.fetchNodes();
     });

     this.drawNodes = () => {
         let node_data = STORE.state().get('nodes');
         this.simulation
             .nodes(node_data.list)
             .on("tick", () => {
                 let svg = this.d3svg.Svg();

                 let images = svg.selectAll('image.frend');
                 images.attr("x", function(d) { return d.x; })
                       .attr("y", function(d) { return d.y; });

                 let lines = svg.selectAll('line');
                 lines.attr("x1", function(d) { return d.source.x + 256 / 2; })
                      .attr("y1", function(d) { return d.source.y + 256 / 2; })
                      .attr("x2", function(d) { return d.target.x + 256 / 2; })
                      .attr("y2", function(d) { return d.target.y + 256 / 2; })
                      .attr('stroke-dasharray', (d) => {
                          let from = d.source;
                          let to = d.target;
                          let x1 = from.x;
                          let y1 = from.y;
                          let x2 = to.x;
                          let y2 = to.y;
                          let r = 256 / 2 + 22;
                          let v = Math.sqrt(Math.pow(x2 - x1, 2) + Math.pow(y2 - y1, 2));
                          return '0, ' + r + ', ' + (Math.floor(v) - r*2) + ', ' + r;
                      })
                 ;
             });
         this.d3nodes.draw(
             node_data,
             this.d3svg,
             this.simulation);

         ACTIONS.fetchEdges()
     };

     this.drawEdges = () => {
         let edges_data = STORE.state().get('edges');
         let node_data = STORE.state().get('nodes');
         this.d3lines.draw(edges_data, this.d3svg, node_data);
         this.simulation
             .force("link")
             .links(edges_data.list)
             .distance(888)
             .strength(1);
     };

     STORE.subscribe((action) => {
         if (action.type=='FETCHED-NODES')
             return this.drawNodes();
         if (action.type=='FETCHED-EDGES')
             return this.drawEdges();
     });

});

riot.tag2('page01-sec_root', '<network-graph></network-graph>', '', '', function(opts) {
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

riot.tag2('page02-sec_root', '', '', '', function(opts) {
});

riot.tag2('page03-sec_root', '', '', '', function(opts) {
});
