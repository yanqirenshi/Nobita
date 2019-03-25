class Store extends Vanilla_Redux_Store {
    constructor(reducer) {
        super(reducer, Immutable.Map({}));
    }
    initSiteHome () {
        return {
            code: "home",
            tag: 'home_sec_root',
            children: [
                { code: 'node',        tag: 'class_node' },
                { code: 'g-an',        tag: 'class_g-an' },
                { code: '4neo',        tag: 'class_4neo' },
                { code: 'nobit@',      tag: 'class_nobit@' },
                { code: 'friendships', tag: 'class_friendships' },
                { code: 'ieda',        tag: 'class_ieda' },
                { code: 'karma-pool',  tag: 'class_karma-pool' },
                { code: 'nobiheart',   tag: 'class_nobiheart' },
            ],
            menu_label: '家',
        };
    }
    initSiteHearts () {
        return {
            code: "hearts",
            tag: 'hearts_root',
            children: [
                { code: 'nobiheart',  tag: 'class_nobiheart' },
                { code: 'karma-pool', tag: 'class_karma-pool' },
                { code: 'make-karma', tag: 'function_make-karma' },
            ],
            menu_label: '心臓',
        };
    }
    initSitePropagation () {
        return {
            code: "propagation",
            tag: 'propagation_root',
            children: [
                {code: 'idea',                   tag: 'class_ieda' },
                {code: 'spreads',                tag: 'generic-function_spreads' },
                {code: 'spread',                 tag: 'generic-function_spread' },
                {code: 'flash-across-ones-mind', tag: 'generic-function_flash-across-ones-mind' },
            ],
            menu_label: '伝播',
        };
    }
    initSite () {
        return {
            active_page: 'home',
            home_page: 'home',
            pages: [
                this.initSiteHome(),
                {
                    code: "friends",
                    tag: 'friends_root',
                    children: [
                        { code: 'g-an',   tag: 'class_g-an',    title: 'Class: G×an',   description: '' },
                        { code: '4neo',   tag: 'class_4neo',    title: 'Class: 4Neo',   description: '' },
                        { code: 'nobita', tag: 'class_nobita',  title: 'Class: Nobit@', description: '' }
                    ],
                    menu_label: '友達',
                },
                {
                    code: "friendships",
                    tag: 'friendships_root',
                    children: [
                        { code: 'friendships', tag: 'class_friendships', title: 'Friendships', description: '' },
                        { code: 'idea',        tag: 'class_idea',        title: 'Iidea',       description: '' }
                    ],
                    menu_label: '友情',
                },
                this.initSiteHearts(),
                this.initSitePropagation(),
            ]
        };
    }
    init () {
        let data = {
            packages: _CL_PACKAGES,
            classes: _CL_CLASSES,
            variables: _CL_VARIABLES,
            operators: _CL_OPERATORS,
            data: {
                structures: _CL_DATASTRUCTURES,
            },
            site: this.initSite(),
        };

        for (var i in data.site.pages) {
            let page = data.site.pages[i];
            for (var k in page.sections) {
                let section = page.sections[k];
                let hash = '#' + page.code;

                if (section.code!='root')
                    hash += '/' + section.code;

                section.hash = hash;
            }
        }


        this._contents = Immutable.Map(data);
        return this;
    }
}
