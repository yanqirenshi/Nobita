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
        return {
            type: 'FETCHED-ROOT-DATA',
            data: {
                nodes: response.NODES,
                edges: response.EDGES
            },
            target: 'app'
        };
    }
}
