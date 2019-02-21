class Store extends Vanilla_Redux_Store {
    constructor(reducer) {
        super(reducer, Immutable.Map({}));
    }
    init () {
        let data = {
            nodes: { ht: {}, list: [] },
            site: {
                active_page: 'school-district',
                home_page: 'school-district',
                pages: [
                    {
                        code: "school-district",
                        title: "H",
                        menu_label: '校区',
                        active_section: 'root',
                        home_section: 'root',
                        sections: [
                            { code: 'root', tag: 'school-district_sec_root', title: 'Section: root', description: '' },
                        ],
                        stye: {
                            color: { 1: '#fdeff2', 2: '#e0e0e0', 3: '#e198b4', 4: '#ffffff', 5: '#eeeeee', 5: '#333333' }
                        }
                    },
                    {
                        code: "friends",
                        title: "Nobit@: 友達",
                        menu_label: '友達',
                        active_section: 'root',
                        home_section: 'root',
                        sections: [{ code: 'root', tag: 'friends_sec_root', title: 'Home', description: '' }],
                        stye: {
                            color: { 1: '#fdeff2', 2: '#e0e0e0', 3: '#e198b4', 4: '#ffffff', 5: '#eeeeee', 5: '#333333' }
                        }
                    },
                    {
                        code: "friendship",
                        title: "Nobit@: 友情",
                        menu_label: '友情',
                        active_section: 'root',
                        home_section: 'root',
                        sections: [{ code: 'root', tag: 'friendship_sec_root', title: 'Home', description: '' }],
                        stye: {
                            color: { 1: '#fdeff2', 2: '#e0e0e0', 3: '#e198b4', 4: '#ffffff', 5: '#eeeeee', 5: '#333333' }
                        }
                    },
                    {
                        code: "hearts",
                        title: "Nobit@: 心臓",
                        menu_label: '心臓',
                        active_section: 'root',
                        home_section: 'root',
                        sections: [{ code: 'root', tag: 'hearts_sec_root', title: 'Home', description: '' }],
                        stye: {
                            color: { 1: '#fdeff2', 2: '#e0e0e0', 3: '#e198b4', 4: '#ffffff', 5: '#eeeeee', 5: '#333333' }
                        }
                    }
                ]
            }
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
