class Store extends Vanilla_Redux_Store {
    constructor(reducer) {
        super(reducer, Immutable.Map({}));
    }
    init () {
        let data = {
            site: {
                active_page: 'page01',
                home_page: 'page01',
                pages: [
                    {
                        code: "page01",
                        title: 'Home',
                        menu_label: '家',
                        active_section: 'root',
                        home_section: 'root',
                        sections: [{ code: 'root', tag: 'page01-sec_root', title: 'Section: root', description: '' }],
                        stye: {color: { 1: '#fdeff2', 2: '#e0e0e0', 3: '#e198b4', 4: '#ffffff', 5: '#eeeeee', 5: '#333333' }}
                    },
                    {
                        code: "page02",
                        title: "Classes",
                        menu_label: '友達',
                        active_section: 'root',
                        home_section: 'root',
                        sections: [{ code: 'root', tag: 'page02-sec_root', title: 'Home', description: '' }],
                        stye: {
                            color: { 1: '#fdeff2', 2: '#e0e0e0', 3: '#e198b4', 4: '#ffffff', 5: '#eeeeee', 5: '#333333' }
                        }
                    },
                    {
                        code: "page03",
                        title: "友情",
                        menu_label: '友情',
                        active_section: 'root',
                        home_section: 'root',
                        sections: [{ code: 'root', tag: 'page03-sec_root', title: 'Home', description: '' }],
                        stye: {
                            color: { 1: '#fdeff2', 2: '#e0e0e0', 3: '#e198b4', 4: '#ffffff', 5: '#eeeeee', 5: '#333333' }
                        }
                    },
                    {
                        code: "page04",
                        title: "Nobit@ Harts",
                        menu_label: '心',
                        active_section: 'root',
                        home_section: 'root',
                        sections: [{ code: 'root', tag: 'page04-sec_root', title: 'Home', description: '' }],
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
