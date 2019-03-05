const _CL_OPERATORS = [
    {
        export: true,
        package: 'nobit@',
        type: 'Function',
        name: 'start',
        description: '',
        group: { hearts: true, propagation: false, friends: true, friendships: false }
    },
    {
        export: true,
        package: 'nobit@',
        type: 'Function',
        name: 'find-hearts',
        description: '',
        group: { hearts: true, propagation: false, friends: false, friendships: false }
    },
    {
        export: true,
        package: 'nobit@',
        type: 'Generic Function',
        name: 'tx-make-frendship',
        description: '',
        group: { hearts: false, propagation: false, friends: false, friendships: true }
    },
    {
        export: true,
        package: 'nobit@',
        type: 'Generic Function',
        name: 'tx-save-location',
        description: '',
        group: { hearts: false, propagation: false, friends: true, friendships: false }
    },
    {
        export: true,
        package: 'nobit@',
        type: 'Function',
        name: 'find-g*an',
        description: '',
        group: { hearts: false, propagation: false, friends: true, friendships: false }
    },
    {
        export: true,
        package: 'nobit@',
        type: 'Function',
        name: 'get-g*an',
        description: '',
        group: { hearts: false, propagation: false, friends: true, friendships: false }
    },
    {
        export: true,
        package: 'nobit@',
        type: 'Function',
        name: 'tx-make-g*an',
        description: '',
        group: { hearts: false, propagation: false, friends: true, friendships: false }
    },
    {
        export: true,
        package: 'nobit@',
        type: 'Function',
        name: 'find-4neo',
        description: '',
        group: { hearts: false, propagation: false, friends: true, friendships: false }
    },
    {
        export: true,
        package: 'nobit@',
        type: 'Function',
        name: 'get-4neo',
        description: '',
        group: { hearts: false, propagation: false, friends: true, friendships: false }
    },
    {
        export: true,
        package: 'nobit@',
        type: 'Function',
        name: 'tx-make-4neo',
        description: '',
        group: { hearts: false, propagation: false, friends: true, friendships: false }
    },
    {
        export: true,
        package: 'nobit@',
        type: 'Function',
        name: 'find-nobit@',
        description: '',
        group: { hearts: false, propagation: false, friends: true, friendships: false }
    },
    {
        export: true,
        package: 'nobit@',
        type: 'Function',
        name: 'get-nobit@',
        description: '',
        group: { hearts: false, propagation: false, friends: true, friendships: false }
    },
    {
        export: true,
        package: 'nobit@',
        type: 'Function',
        name: 'tx-make-nobit@',
        description: '',
        group: { hearts: false, propagation: false, friends: true, friendships: false }
    },
    {
        export: true,
        package: 'nobit@',
        type: 'Function',
        name: 'find-frendship',
        description: '',
        group: { hearts: false, propagation: false, friends: false, friendships: true }
    },
    {
        export: true,
        package: 'nobit@',
        type: 'Generic Function',
        name: 'flash-across-ones-mind',
        description: '',
        group: { hearts: false, propagation: true, friends: true, friendships: false }
    },
    {
        export: false,
        package: 'nobit@',
        type: 'Function',
        name: '%heart-core',
        description: '',
        group: { hearts: true, propagation: false, friends: false, friendships: false }
    },
    {
        export: false,
        package: 'nobit@',
        type: 'Function',
        name: 'heart-core-before',
        description: '',
        group: { hearts: true, propagation: false, friends: false, friendships: false }
    },
    {
        export: false,
        package: 'nobit@',
        type: 'Function',
        name: 'heart-core-after',
        description: '',
        group: { hearts: true, propagation: false, friends: false, friendships: false }
    },
    {
        export: false,
        package: 'nobit@',
        type: 'Function',
        name: 'heart-core',
        description: '',
        group: { hearts: true, propagation: false, friends: false, friendships: false }
    },
    {
        export: false,
        package: 'nobit@',
        type: 'Function',
        name: 'get-heart',
        description: '',
        group: { hearts: true, propagation: false, friends: false, friendships: false }
    },
    {
        export: false,
        package: 'nobit@',
        type: 'Function',
        name: 'add-heart',
        description: '',
        group: { hearts: true, propagation: false, friends: false, friendships: false }
    },
    {
        export: false,
        package: 'nobit@',
        type: 'Function',
        name: 'rm-heart',
        description: '',
        group: { hearts: true, propagation: false, friends: false, friendships: false }
    },
    {
        export: false,
        package: 'nobit@',
        type: 'Generic Function',
        name: 'spreads',
        description: '',
        group: { hearts: false, propagation: true, friends: false, friendships: false }
    },
    {
        export: false,
        package: 'nobit@',
        type: 'Generic Function',
        name: 'spread',
        description: '',
        group: { hearts: false, propagation: true, friends: false, friendships: false }
    },
    /////
    ///// nobit@.hearts
    /////
    {
        export: true,
        package: 'nobit@.hearts',
        type: 'Function',
        name: 'make-heart',
        description: '',
        group: { hearts: true, propagation: false, friends: false, friendships: false }
    },
    {
        export: true,
        package: 'nobit@.hearts',
        type: 'Generic Function',
        name: 'start-heart',
        description: '',
        group: { hearts: true, propagation: false, friends: false, friendships: false }
    },
    {
        export: true,
        package: 'nobit@.hearts',
        type: 'Generic Function',
        name: 'stop-heart',
        description: '',
        group: { hearts: true, propagation: false, friends: false, friendships: false }
    },
    /////
    ///// nobit@.karma
    /////
    {
        export: false,
        package: 'nobit@.karma',
        type: 'Function',
        name: 'make-karma',
        description: '',
        group: { hearts: true, propagation: false, friends: false, friendships: false }
    },
    {
        export: true,
        package: 'nobit@.karma',
        type: 'Function',
        name: 'make-karma-pool',
        description: '',
        group: { hearts: true, propagation: false, friends: false, friendships: false }
    },
    {
        export: true,
        package: 'nobit@.karma',
        type: 'Generic Function',
        name: 'push-karma',
        description: '',
        group: { hearts: true, propagation: false, friends: false, friendships: false }
    },
    {
        export: true,
        package: 'nobit@.karma',
        type: 'Generic Function',
        name: 'pop-karma',
        description: '',
        group: { hearts: true, propagation: false, friends: false, friendships: false }
    },
    {
        export: true,
        package: 'nobit@.karma',
        type: 'Generic Function',
        name: 'qsize',
        description: '',
        group: { hearts: true, propagation: false, friends: false, friendships: false }
    },
    {
        export: true,
        package: 'nobit@.karma',
        type: 'Generic Function',
        name: 'karma-pool',
        description: '',
        group: { hearts: true, propagation: false, friends: false, friendships: false }
    },
    {
        export: false,
        package: 'nobit@.karma',
        type: 'Generic Function',
        name: 'find-karmas',
        description: '',
        group: { hearts: true, propagation: false, friends: false, friendships: false }
    },
    {
        export: false,
        package: 'nobit@.karma',
        type: 'Generic Function',
        name: 'rm-karma-at-idea-id',
        description: '',
        group: { hearts: true, propagation: false, friends: false, friendships: false }
    },
    // template
    // {
    //     export: false,
    //     package: '',
    //     type: '',
    //     name: '',
    //     description: '',
    //     group: { hearts: false, propagation: false, friends: false, friendships: false }
    // },
];
