class Store extends Vanilla_Redux_Store {
    constructor(reducer) {
        super(reducer, Immutable.Map({}));
    }
    initSite () {
        let data = {
            active_page: 'school-district',
            home_page: 'school-district',
            pages: [
                {
                    code: "school-district",
                    tag: 'school-district',
                    sections: [],
                    menu_label: '校区',
                },
                {
                    code: "friends",
                    tag: 'friends',
                    sections: [],
                    menu_label: '友達',
                },
                {
                    code: "friendship",
                    tag: 'friendship',
                    sections: [],
                    menu_label: '友情',
                },
                {
                    code: "hearts",
                    tag: 'hearts',
                    sections: [],
                    menu_label: '心臓',
                }
            ]
        };

        for (let page in data.pages) {

            for (var k in page.sections) {
                let section = page.sections[k];

                let hash = '#' + page.code;

                if (section.code!='root')
                    hash += '/' + section.code;

                section.hash = hash;
            }
        }

        return { site: data };
    }
    initData () {
        return {
            nodes: { ht: {}, list: [] },
            edges: { ht: {}, list: [] },
            school: {
                district: {
                    select: {
                        node: null
                    }
                },
            },
        };
    }
    init () {
        let data = Object.assign({}, this.initData(), this.initSite());

        this._contents = Immutable.Map(data);
        return this;
    }
}
