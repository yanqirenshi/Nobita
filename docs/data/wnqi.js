class WNQI {
    // ID Range: 1 〜 9
    projects () {
        return [
            { _id: 1, name: "NoBit@", description: "" },
        ];
    }
    // ID Range: 10 〜 99
    wbsLev01 () {
        return [
            { _id: 10, name: "Procedures", description: "" },
            { _id: 11, name: "Packages",   description: "" },
            { _id: 12, name: "Varibles",   description: "" },
            { _id: 13, name: "Classes",    description: "" },
            { _id: 14, name: "Operators",  description: "" },
        ];
    }
    // ID Range: 100 〜 999
    wbsLev02 () {
        return [
        ];
    }
    // ID Range: 1000 〜 9999
    wbsLev03 () { return []; }
    // ID Range: 10000000 〜
    wbs() {
        return [].concat(
            this.wbsLev01(),
            this.wbsLev02(),
            this.wbsLev03()
        );
    }
    workpackages () {
        return [
            { _id: 10000000, name: "nobit@",                        type: 'package', description: "Package" },
            { _id: 10000001, name: "nobit@.utilities",              type: 'package', description: "Package" },
            { _id: 10000002, name: "nobit@.hearts",                 type: 'package', description: "Package" },
            { _id: 10000003, name: "nobit@.karma",                  type: 'package', description: "Package" },
            { _id: 10000004, name: "nobit@.idea",                   type: 'package', description: "Package" },
            { _id: 10000005, name: "nobit@.action",                 type: 'package', description: "Package" },
            { _id: 10000006, name: "nobit@.api",                    type: 'package', description: "Package" },
            { _id: 10000007, name: "nobit@.api.app",                type: 'package', description: "Package" },
            { _id: 10000008, name: "nobit@.api.controller",         type: 'package', description: "Package" },
            { _id: 10000009, name: "nobit@.api.render",             type: 'package', description: "Package" },
            { _id: 10000010, name: "nobit@.api.config",             type: 'package', description: "Package" },
            { _id: 10000011, name: "nobit@.api.router",             type: 'package', description: "Package" },
            { _id: 10000012, name: "nobit@.api.api-v1",             type: 'package', description: "Package" },
            { _id: 10000013, name: "*access-control-allow-origin*", type: 'variable', description: "Variable" },
            { _id: 10000014, name: "*appfile-path*",                type: 'variable', description: "Variable" },
            { _id: 10000015, name: "*application-code*",            type: 'variable', description: "Variable" },
            { _id: 10000016, name: "*application-root*",            type: 'variable', description: "Variable" },
            { _id: 10000017, name: "*graph*",                       type: 'variable', description: "Variable" },
            { _id: 10000018, name: "*graph-stor-dir*",              type: 'variable', description: "Variable" },
            { _id: 10000019, name: "*handler*",                     type: 'variable', description: "Variable" },
            { _id: 10000020, name: "*hearts*",                      type: 'variable', description: "Variable" },
            { _id: 10000021, name: "*hook-heart-core-after*",       type: 'variable', description: "Variable" },
            { _id: 10000022, name: "*hook-heart-core-before*",      type: 'variable', description: "Variable" },
            { _id: 10000023, name: "*idea-id-counter*",             type: 'variable', description: "Variable" },
            { _id: 10000024, name: "*pocket*",                      type: 'variable', description: "Variable" },
            { _id: 10000025, name: "*route*",                       type: 'variable', description: "Variable" },
            { _id: 10000026, name: "*router*",                      type: 'variable', description: "Variable" },
            { _id: 10000027, name: "*tree*",                        type: 'variable', description: "Variable" },
            { _id: 10000028, name: "*tree-stor*",                   type: 'variable', description: "Variable" },
            { _id: 10000029, name: "node",                          type: 'class', description: "Class" },
            { _id: 10000030, name: "edge",                          type: 'class', description: "Class" },
            { _id: 10000031, name: "g*an",                          type: 'class', description: "Class" },
            { _id: 10000032, name: "4neo",                          type: 'class', description: "Class" },
            { _id: 10000033, name: "nobit@",                        type: 'class', description: "Class" },
            { _id: 10000034, name: "friendship",                    type: 'class', description: "Class" },
            { _id: 10000035, name: "nobiheart",                     type: 'class', description: "Class" },
            { _id: 10000036, name: "karma-pool",                    type: 'class', description: "Class" },
            { _id: 10000037, name: "idea",                          type: 'class', description: "Class" },
            { _id: 10000038, name: 'find-4neo',                     type: 'operator', export: true, description: 'packge:nobit@' },
            { _id: 10000039, name: 'find-frendship',                type: 'operator', export: true, description: 'packge:nobit@' },
            { _id: 10000040, name: 'find-g*an',                     type: 'operator', export: true, description: 'packge:nobit@' },
            { _id: 10000041, name: 'find-hearts',                   type: 'operator', export: true, description: 'packge:nobit@' },
            { _id: 10000042, name: 'find-nobit@',                   type: 'operator', export: true, description: 'packge:nobit@' },
            { _id: 10000043, name: 'flash-across-ones-mind',        type: 'operator', export: true, description: 'packge:nobit@' },
            { _id: 10000044, name: 'get-4neo',                      type: 'operator', export: true, description: 'packge:nobit@' },
            { _id: 10000045, name: 'get-friend',                    type: 'operator', export: true, description: 'packge:nobit@' },
            { _id: 10000046, name: 'get-g*an',                      type: 'operator', export: true, description: 'packge:nobit@' },
            { _id: 10000047, name: 'get-heart',                     type: 'operator', export: true, description: 'packge:nobit@' },
            { _id: 10000048, name: 'get-nobit@',                    type: 'operator', export: true, description: 'packge:nobit@' },
            { _id: 10000049, name: 'start',                         type: 'operator', export: true, description: 'packge:nobit@' },
            { _id: 10000050, name: 'tx-make-4neo',                  type: 'operator', export: true, description: 'packge:nobit@' },
            { _id: 10000051, name: 'tx-make-frendship',             type: 'operator', export: true, description: 'packge:nobit@' },
            { _id: 10000052, name: 'tx-make-g*an',                  type: 'operator', export: true, description: 'packge:nobit@' },
            { _id: 10000053, name: 'tx-make-nobit@',                type: 'operator', export: true, description: 'packge:nobit@' },
            { _id: 10000054, name: 'tx-save-location',              type: 'operator', export: true, description: 'packge:nobit@' },
            { _id: 10000055, name: 'action!',                       type: 'operator', export: true, description: 'packge:nobit@.action' },
            { _id: 10000056, name: 'action-plan-cl',                type: 'operator', export: true, description: 'packge:nobit@.action' },
            { _id: 10000057, name: 'action-plan-op',                type: 'operator', export: true, description: 'packge:nobit@.action' },
            { _id: 10000058, name: 'karma-pool',                    type: 'operator', export: true, description: 'packge:nobit@.hearts' },
            { _id: 10000059, name: 'make-heart',                    type: 'operator', export: true, description: 'packge:nobit@.hearts' },
            { _id: 10000060, name: 'pop-karma',                     type: 'operator', export: true, description: 'packge:nobit@.hearts' },
            { _id: 10000061, name: 'push-karma',                    type: 'operator', export: true, description: 'packge:nobit@.hearts' },
            { _id: 10000062, name: 'start-heart',                   type: 'operator', export: true, description: 'packge:nobit@.hearts' },
            { _id: 10000063, name: 'stop-heart',                    type: 'operator', export: true, description: 'packge:nobit@.hearts' },
            { _id: 10000064, name: 'copy-idea',                     type: 'operator', export: true, description: 'packge:nobit@.idea' },
            { _id: 10000065, name: 'make-idea',                     type: 'operator', export: true, description: 'packge:nobit@.idea' },
            { _id: 10000066, name: 'karma-pool',                    type: 'operator', export: true, description: 'packge:nobit@.karma' },
            { _id: 10000067, name: 'make-karma-pool',               type: 'operator', export: true, description: 'packge:nobit@.karma' },
            { _id: 10000068, name: 'pop-karma',                     type: 'operator', export: true, description: 'packge:nobit@.karma' },
            { _id: 10000069, name: 'push-karma',                    type: 'operator', export: true, description: 'packge:nobit@.karma' },
            { _id: 10000070, name: 'qsize',                         type: 'operator', export: true, description: 'packge:nobit@.karma' },
            { _id: 10000071, name: 'rm-karma-at-idea-id',           type: 'operator', export: true, description: 'packge:nobit@.karma' },
            { _id: 10000072, name: 'add-to-pocket',                 type: 'operator', export: true, description: 'packge:nobit@.pocket' },
            { _id: 10000073, name: 'find-from-pocket',              type: 'operator', export: true, description: 'packge:nobit@.pocket' },
            { _id: 10000074, name: 'get-from-pocket',               type: 'operator', export: true, description: 'packge:nobit@.pocket' },
            { _id: 10000075, name: 'rm-from-pocket',                type: 'operator', export: true, description: 'packge:nobit@.pocket' },
            { _id: 10000076, name: 'class-symbol',                  type: 'operator', export: true, description: 'packge:nobit@.utilities' },
            { _id: 10000077, name: 'spread',                        type: 'operator', export: false, description: 'packge:nobit@' },
            { _id: 10000078, name: 'spreads',                       type: 'operator', export: false, description: 'packge:nobit@' },
            { _id: 10000079, name: 'spread-action',                 type: 'operator', export: false, description: 'packge:nobit@' },
        ];
    }
    edges () {
        return [
            { from:  1, to:       10 },
            { from:  1, to:       11 },
            { from:  1, to:       12 },
            { from:  1, to:       13 },
            { from:  1, to:       14 },
            { from: 11, to: 10000000 },
            { from: 11, to: 10000001 },
            { from: 11, to: 10000002 },
            { from: 11, to: 10000003 },
            { from: 11, to: 10000004 },
            { from: 11, to: 10000005 },
            { from: 11, to: 10000006 },
            { from: 11, to: 10000007 },
            { from: 11, to: 10000008 },
            { from: 11, to: 10000009 },
            { from: 11, to: 10000010 },
            { from: 11, to: 10000011 },
            { from: 11, to: 10000012 },
            { from: 12, to: 10000013 },
            { from: 12, to: 10000014 },
            { from: 12, to: 10000015 },
            { from: 12, to: 10000016 },
            { from: 12, to: 10000017 },
            { from: 12, to: 10000018 },
            { from: 12, to: 10000019 },
            { from: 12, to: 10000020 },
            { from: 12, to: 10000021 },
            { from: 12, to: 10000022 },
            { from: 12, to: 10000023 },
            { from: 12, to: 10000024 },
            { from: 12, to: 10000025 },
            { from: 12, to: 10000026 },
            { from: 12, to: 10000027 },
            { from: 12, to: 10000028 },
            { from: 13, to: 10000029 },
            { from: 13, to: 10000030 },
            { from: 13, to: 10000031 },
            { from: 13, to: 10000032 },
            { from: 13, to: 10000033 },
            { from: 13, to: 10000034 },
            { from: 13, to: 10000035 },
            { from: 13, to: 10000036 },
            { from: 13, to: 10000037 },
            { from: 14, to: 10000038 },
            { from: 14, to: 10000039 },
            { from: 14, to: 10000040 },
            { from: 14, to: 10000041 },
            { from: 14, to: 10000042 },
            { from: 14, to: 10000043 },
            { from: 14, to: 10000044 },
            { from: 14, to: 10000045 },
            { from: 14, to: 10000046 },
            { from: 14, to: 10000047 },
            { from: 14, to: 10000048 },
            { from: 14, to: 10000049 },
            { from: 14, to: 10000050 },
            { from: 14, to: 10000051 },
            { from: 14, to: 10000052 },
            { from: 14, to: 10000053 },
            { from: 14, to: 10000054 },
            { from: 14, to: 10000055 },
            { from: 14, to: 10000056 },
            { from: 14, to: 10000057 },
            { from: 14, to: 10000058 },
            { from: 14, to: 10000059 },
            { from: 14, to: 10000060 },
            { from: 14, to: 10000061 },
            { from: 14, to: 10000062 },
            { from: 14, to: 10000063 },
            { from: 14, to: 10000064 },
            { from: 14, to: 10000065 },
            { from: 14, to: 10000066 },
            { from: 14, to: 10000067 },
            { from: 14, to: 10000068 },
            { from: 14, to: 10000069 },
            { from: 14, to: 10000070 },
            { from: 14, to: 10000071 },
            { from: 14, to: 10000072 },
            { from: 14, to: 10000073 },
            { from: 14, to: 10000074 },
            { from: 14, to: 10000075 },
            { from: 14, to: 10000076 },
            { from: 14, to: 10000077 },
            { from: 14, to: 10000078 },
            { from: 14, to: 10000079 },
        ];
    }
    dependencies () {
    }
    list2pool (list) {
        return list.reduce((pool, data) => {
            pool.ht[data._id] = data;

            return pool;
        }, { ht: {}, list: [].concat(list) });
    }
    list2WbsNodesData (_class, list) {
        return this.list2pool(list.map((d) => {
            return {
                _class:      _class,
                _id:         d._id,
                name:        d.name,
                description: d.description,
                "result": {
                    "start": null,
                    "end": null,
                    "_class": "RESULT"
                },
                "schedule": {
                    "start": null,
                    "end": null,
                    "_class": "SCHEDULE"
                },
                _core: d,
            };
        }));
    }
    list2WbsEdgesData (node, list) {
        return this.list2pool(list.map((d) => {
            let from = node(d.from);
            let to   = node(d.to);

            return {
                "_class": "EDGE",
                "_id": this.edge_id_counter++,

                "from_class": from._class,
                "from_id":    from._id,

                "start": [],

                "to_class": to._class,
                "to_id":    to._id,
            };
        }));
    }
    build () {
        let projects     = this.list2WbsNodesData("PROJECT",     this.projects());
        let wbs          = this.list2WbsNodesData("WBS",         this.wbs());
        let workpackages = this.list2WbsNodesData("WORKPACKAGE", this.workpackages());

        let getNode = (id) => {
            return projects.ht[id]
                || wbs.ht[id]
                || workpackages.ht[id]
                || null;
        };

        this.edge_id_counter = 100000000;
        let edges = this.list2WbsEdgesData(getNode, this.edges());

        return {
            projects:     projects,
            wbs:          wbs,
            workpackages: workpackages,
            edges:        edges,
        };
    }
}
