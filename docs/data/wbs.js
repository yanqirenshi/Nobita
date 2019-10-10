class WBS {
    // ID Range: 1 〜 9
    project () {
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
    workpackages () {
        return [
            { _id: 10000000, name: "nobit@"                , description: "Package" },
            { _id: 10000001, name: "nobit@.utilities"      , description: "Package" },
            { _id: 10000002, name: "nobit@.hearts"         , description: "Package" },
            { _id: 10000003, name: "nobit@.karma"          , description: "Package" },
            { _id: 10000004, name: "nobit@.idea"           , description: "Package" },
            { _id: 10000005, name: "nobit@.action"         , description: "Package" },
            { _id: 10000006, name: "nobit@.api"            , description: "Package" },
            { _id: 10000007, name: "nobit@.api.app"        , description: "Package" },
            { _id: 10000008, name: "nobit@.api.controller" , description: "Package" },
            { _id: 10000009, name: "nobit@.api.render"     , description: "Package" },
            { _id: 10000010, name: "nobit@.api.config"     , description: "Package" },
            { _id: 10000011, name: "nobit@.api.router"     , description: "Package" },
            { _id: 10000012, name: "nobit@.api.api-v1"     , description: "Package" },
            { _id: 10000013, name: "*access-control-allow-origin*" , description: "Variable" },
            { _id: 10000014, name: "*appfile-path*"                , description: "Variable" },
            { _id: 10000015, name: "*application-code*"            , description: "Variable" },
            { _id: 10000016, name: "*application-root*"            , description: "Variable" },
            { _id: 10000017, name: "*graph*"                       , description: "Variable" },
            { _id: 10000018, name: "*graph-stor-dir*"              , description: "Variable" },
            { _id: 10000019, name: "*handler*"                     , description: "Variable" },
            { _id: 10000020, name: "*hearts*"                      , description: "Variable" },
            { _id: 10000021, name: "*hook-heart-core-after*"       , description: "Variable" },
            { _id: 10000022, name: "*hook-heart-core-before*"      , description: "Variable" },
            { _id: 10000023, name: "*idea-id-counter*"             , description: "Variable" },
            { _id: 10000024, name: "*pocket*"                      , description: "Variable" },
            { _id: 10000025, name: "*route*"                       , description: "Variable" },
            { _id: 10000026, name: "*router*"                      , description: "Variable" },
            { _id: 10000027, name: "*tree*"                        , description: "Variable" },
            { _id: 10000028, name: "*tree-stor*"                   , description: "Variable" },
            { _id: 10000029, name: "node"       , description: "Class" },
            { _id: 10000030, name: "edge"       , description: "Class" },
            { _id: 10000031, name: "g*an"       , description: "Class" },
            { _id: 10000032, name: "4neo"       , description: "Class" },
            { _id: 10000033, name: "nobit@"     , description: "Class" },
            { _id: 10000034, name: "friendship" , description: "Class" },
            { _id: 10000035, name: "nobiheart"  , description: "Class" },
            { _id: 10000036, name: "karma-pool" , description: "Class" },
            { _id: 10000037, name: "idea"       , description: "Class" },
            { _id: 10000038, name: "", description: "" },
            { _id: 10000039, name: "", description: "" },
            { _id: 10000040, name: "", description: "" },
            { _id: 10000041, name: "", description: "" },
            { _id: 10000042, name: "", description: "" },
            { _id: 10000043, name: "", description: "" },
            { _id: 10000044, name: "", description: "" },
            { _id: 10000045, name: "", description: "" },
            { _id: 10000046, name: "", description: "" },
            { _id: 10000047, name: "", description: "" },
            { _id: 10000048, name: "", description: "" },
            { _id: 10000049, name: "", description: "" },
            { _id: 10000050, name: "", description: "" },
            { _id: 10000051, name: "", description: "" },
            { _id: 10000052, name: "", description: "" },
            { _id: 10000053, name: "", description: "" },
            { _id: 10000054, name: "", description: "" },
            { _id: 10000055, name: "", description: "" },
            { _id: 10000056, name: "", description: "" },
            { _id: 10000057, name: "", description: "" },
            { _id: 10000058, name: "", description: "" },
            { _id: 10000059, name: "", description: "" },
            { _id: 10000060, name: "", description: "" },
            { _id: 10000061, name: "", description: "" },
            { _id: 10000062, name: "", description: "" },
            { _id: 10000063, name: "", description: "" },
            { _id: 10000064, name: "", description: "" },
            { _id: 10000065, name: "", description: "" },
            { _id: 10000066, name: "", description: "" },
            { _id: 10000067, name: "", description: "" },
            { _id: 10000068, name: "", description: "" },
            { _id: 10000069, name: "", description: "" },
            { _id: 10000070, name: "", description: "" },
            { _id: 10000071, name: "", description: "" },
            { _id: 10000072, name: "", description: "" },
            { _id: 10000073, name: "", description: "" },
            { _id: 10000074, name: "", description: "" },
            { _id: 10000075, name: "", description: "" },
            { _id: 10000076, name: "", description: "" },
            { _id: 10000077, name: "", description: "" },
            { _id: 10000078, name: "", description: "" },
            { _id: 10000079, name: "", description: "" },
        ];
    }
}
