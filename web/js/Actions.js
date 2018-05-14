class Actions extends Vanilla_Redux_Actions {
    movePage (data) {
        return {
            type: 'MOVE-PAGE',
            data: data
        };
    }
    fetchRootData () {
        API.get('/', function (response) {
            STORE.dispatch(this.fetchedRootData(response));
        }.bind(this));
    }
    fetchedRootData (response) {
        let makeData = (list) => {
            let ht = {};
            for (var i in list) {
                if (ht[list[i]._id])
                    ht[list[i]._id] = list[i]; // TODO: merge ht
                else
                    ht[list[i]._id] = list[i];
            }
            return {ht: ht, arr: list};
        };

        return {
            type: 'FETCHED-ROOT-DATA',
            data: {
                nodes: makeData(response.NODES),
                edges: makeData(response.EDGES)
            },
            target: 'stage'
        };
    }
}
