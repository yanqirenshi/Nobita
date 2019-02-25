class Store extends Vanilla_Redux_Store {
    constructor(reducer) {
        super(reducer, Immutable.Map({}));
    }
    initSiteHome () {
        return {
            code: "home",
            title: 'Home',
            menu_label: '家',
            active_section: 'root',
            home_section: 'root',
            sections: [
                { code: 'root',        tag: 'home_sec_root', title: 'Section: root', description: '' },
                { code: 'node',        tag: 'class_node' },
                { code: 'g-an',        tag: 'class_g-an' },
                { code: '4neo',        tag: 'class_4neo' },
                { code: 'nobit@',      tag: 'class_nobit@' },
                { code: 'friendships', tag: 'class_friendships' },
                { code: 'ieda',        tag: 'class_ieda' },
                { code: 'karma-pool',  tag: 'class_karma-pool' },
                { code: 'nobiheart',   tag: 'class_nobiheart' },
            ],
            stye: {color: { 1: '#fdeff2', 2: '#e0e0e0', 3: '#e198b4', 4: '#ffffff', 5: '#eeeeee', 5: '#333333' }}
        };
    }
    initSiteHearts () {
        return {
            code: "hearts",
            title: "Nobit@ Harts",
            menu_label: '心臓',
            active_section: 'root',
            home_section: 'root',
            sections: [
                { code: 'root',       tag: 'hearts_root',      title: 'Home',              description: '' },
                { code: 'nobiheart',  tag: 'class_nobiheart',  title: 'Class: NOBIHEART',  description: '' },
                { code: 'karma-pool', tag: 'class_karma-pool', title: 'Class: karma-pool', description: '' }
            ],
            stye: {
                color: { 1: '#fdeff2', 2: '#e0e0e0', 3: '#e198b4', 4: '#ffffff', 5: '#eeeeee', 5: '#333333' }
            }
        };
    }
    initSitePropagation () {
        return {
            code: "propagation",
            title: "Nobit@ 伝播",
            menu_label: '伝播',
            active_section: 'root',
            home_section: 'root',
            sections: [
                {code: 'root',    tag: 'propagation_root' },
                {code: 'idea',    tag: 'class_ieda' },
                {code: 'spreads', tag: 'generic-function_spreads' },
                {code: 'spread',  tag: 'generic-function_spread' },
            ],
            stye: {
                color: { 1: '#fdeff2', 2: '#e0e0e0', 3: '#e198b4', 4: '#ffffff', 5: '#eeeeee', 5: '#333333' }
            }
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
                    title: "Classes",
                    menu_label: '友達',
                    active_section: 'root',
                    home_section: 'root',
                    sections: [
                        { code: 'root',   tag: 'friends_root',  title: 'Home', description: '' },
                        { code: 'g-an',   tag: 'class_g-an',    title: 'Class: G×an',   description: '' },
                        { code: '4neo',   tag: 'class_4neo',    title: 'Class: 4Neo',   description: '' },
                        { code: 'nobita', tag: 'class_nobita',  title: 'Class: Nobit@', description: '' }
                    ],
                    stye: {
                        color: { 1: '#fdeff2', 2: '#e0e0e0', 3: '#e198b4', 4: '#ffffff', 5: '#eeeeee', 5: '#333333' }
                    }
                },
                {
                    code: "friendships",
                    title: "友情",
                    menu_label: '友情',
                    active_section: 'root',
                    home_section: 'root',
                    sections: [
                        { code: 'root',        tag: 'friendships_root',  title: 'Home',        description: '' },
                        { code: 'friendships', tag: 'class_friendships', title: 'Friendships', description: '' },
                        { code: 'idea',        tag: 'class_idea',        title: 'Iidea',       description: '' }
                    ],
                    stye: {
                        color: { 1: '#fdeff2', 2: '#e0e0e0', 3: '#e198b4', 4: '#ffffff', 5: '#eeeeee', 5: '#333333' }
                    }
                },
                this.initSiteHearts(),
                this.initSitePropagation(),
            ]
        };
    }
    init () {
        let data = {
            classes: _CL_CLASSES,
            variables: _CL_VARIABLES,
            operators: _CL_OPERATORS,
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
