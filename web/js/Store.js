class Store extends Vanilla_Redux_Store {
    constructor(reducer) {
        super(reducer, Immutable.Map({}));
    }
    initSiteNobitas () {
        return {
            code: 'nobitas',
            children: [
                {
                    code: 'id',
                    regex: /^\d+$/,
                    tag: 'nobita',
                    children: [
                        {
                            code: 'action',
                            tag: 'nobita-action'
                        },
                    ],
                },
            ],
        };
    }
    initSite () {
        let data = {
            active_page: 'school-district',
            home_page: 'school-district',
            pages: [
                {
                    code: 'school-district',
                    tag: 'school-district',
                    children: [
                        { code: 'g*ans',   children: [ { code: 'id', regex: /^\d+$/, tag: 'g_an'     } ] },
                        { code: '4neos',   children: [ { code: 'id', regex: /^\d+$/, tag: 'four-neo' } ] },
                        this.initSiteNobitas(),
                    ],
                    menu_label: '学区',
                },
                {
                    code: 'friends',
                    tag: 'friends',
                    children: [
                        { code: 'g*ans',   children: [ { code: 'id', regex: /^\d+$/, tag: 'g_an'     } ] },
                        { code: '4neos',   children: [ { code: 'id', regex: /^\d+$/, tag: 'four-neo' } ] },
                        this.initSiteNobitas(),
                    ],
                    menu_label: '友達',
                },
                {
                    code: 'friendship',
                    tag: 'friendship',
                    menu_label: '友情',
                },
                {
                    code: 'hearts',
                    tag: 'hearts',
                    menu_label: '心臓',
                },
                {
                    code: 'school-district-karma',
                    tag: 'school-district-karma',
                    menu_label: '学業',
                },
                {
                    code: 'student-desk',
                    tag: 'student-desk',
                    children: [
                        {
                            code: 'dora@mons',
                            children: [
                                {
                                    code: 'dora@mon',
                                    regex: /^\d+$/,
                                    tag: 'page-doraamon',
                                    children: [
                                        {
                                            code: 'future-items',
                                            children: [
                                                {
                                                    code: 'future-item',
                                                    regex: /^\d+$/,
                                                    tag: 'page-future-item',
                                                }
                                            ],
                                        },
                                    ],
                                },
                            ],
                        },
                    ],
                    menu_label: '学机',
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
            modals: {
                'add-gxan': null,
                'add-4neo': null,
                'add-nobita': null,
                'add-friendship': null,
            },
            hearts: [],
        };
    }
    init () {
        let data = Object.assign({}, this.initData(), this.initSite());

        this._contents = Immutable.Map(data);
        return this;
    }
}
