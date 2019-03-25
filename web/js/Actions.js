class Actions extends Vanilla_Redux_Actions {
    movePage (data) {
        let state = STORE.get('site');

        // Page は選択された route の根なので "[0]" を指定。
        state.active_page = data.route[0];

        STORE.dispatch({
            type: 'MOVE-PAGE',
            data: { site: state },
            route: data.route,
        });
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
        for (let node of response)
            if (node.location.hold) {
                node.fx = node.location.x;
                node.fy = node.location.y;
            }

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
    fetchHearts () {
        let path = '/hearts';

        API.get(path, function (response) {
            STORE.dispatch(this.fetchedHearts(response));
        }.bind(this));
    }
    fetchedHearts (response) {
        return {
            type: 'FETCHED-HEARTS',
            data: { hearts: response },
        };
    }
    clearSelectSchoolDistrict () {
        let new_state = STORE.state().get('school');

        new_state.district.select.node = null;

        STORE.dispatch({
            type: 'CLEARED-SELECT-SCHOOL-DISTRICT',
            data: { school: new_state },
        });
    }
    selectSchoolDistrictGraphNode (node_data) {
        let new_state = STORE.state().get('school');

        new_state.district.select.node = node_data;

        STORE.dispatch({
            type: 'SELECTED-SCHOOL-DISTRICT-GRAPH-NODE',
            data: { school: new_state },
        });
    }
    saveNodeLocation (node_data) {
        let path = '/nodes/' + node_data._id + '/location';
        let post_data = {
            type: node_data._class,
            contents: node_data.location,
        };

        API.post(path, post_data, (response) => {
            STORE.dispatch(this.savedNodeLocation(response));
        });
    }
    savedNodeLocation (response) {
        return {
            type: 'SAVED-NODE-LOCATION',
            data: {},
        };
    }
}
