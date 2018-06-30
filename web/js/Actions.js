class Actions extends Vanilla_Redux_Actions {
    movePage (data) {
        return {
            type: 'MOVE-PAGE',
            data: data
        };
    }
    makeRscData (list) {
        let ht = {};

        for (var i in list)
            ht[list[i]._id] = list[i];

        return { ht: ht, list: list };
    };
    fetchNodes () {
        API.get('/nodes', function (response) {
            STORE.dispatch(this.fetchedNodes(response));
        }.bind(this));
    }
    fetchedNodes (response) {
        return {
            type: 'FETCHED-NODES',
            data: { nodes: this.makeRscData(response) },
            target: null
        };
    }
    fetchEdges () {
        API.get('/edges', function (response) {
            STORE.dispatch(this.fetchedEdges(response));
        }.bind(this));
    }
    fetchedEdges (response) {
        let edges = response.map((d) => {
            return {
                _id: d._id,
                source: d.from_id,
                target: d.to_id,
                distance: 30
            };
        });
        return {
            type: 'FETCHED-EDGES',
            data: { edges: this.makeRscData(edges) },
            target: null
        };
    }
}
