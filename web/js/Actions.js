class Actions extends Vanilla_Redux_Actions {
    encodePostData (data_ht) {
        if (!data_ht) return {};

        let out = Object.assign({}, data_ht);
        for (let key in out) {
            let val = out[key];

            if (key=='description' || key=='name')
                val = val ? '' : val.trim();

            out[key] = encodeURIComponent(out[key]);
        }

        return out;
    }
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
    list2Pool (list) {
        let ht = {};

        for (var i in list)
            ht[list[i]._id] = list[i];

        return { ht: ht, list: list };
    };
    /* **************************************************************** *
     *   ...
     * **************************************************************** */
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
            data: { nodes: this.list2Pool(response) },
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
            data: { edges: this.list2Pool(edges) },
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

        let node_now = new_state.district.select.node;

        if (node_now && node_now == node_data)
            new_state.district.select.node = null;
        else
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
    moveSchoolDistrictFriendView (path) {
        this.clearSelectSchoolDistrict();

        location.hash = path;
    };
    /* **************************************************************** *
     *   Modals
     * **************************************************************** */
    openModal(key, data) {
        let state = STORE.get('modals');

        state[key] = data || 'open';

        STORE.dispatch({
            type: 'OPEN-MODAL',
            data: { modals: state },
        });
    }
    closeModal(key) {
        let state = STORE.get('modals');

        state[key] = null;

        STORE.dispatch({
            type: 'CLOSE-MODAL',
            data: { modals: state },
        });
    }
    /* **************************************************************** *
     *   Resources
     * **************************************************************** */
    createFriendsGxan (data) {
        let path = '/friends/g*an';
        let post_data = {
            name:        data.name,
            description: data.description,
        };

        API.post(path, this.encodePostData(post_data), (response) => {
            STORE.dispatch(this.createdFriendsGxan(response));
        });
    }
    createdFriendsGxan (response) {
        return {
            type: 'CREATED-FRIENDS-GxAN',
        };
    }
    createFriends4neo (data) {
        let path = '/friends/4neo';
        let post_data = {
            name:        data.name,
            description: data.description,
        };

        API.post(path, this.encodePostData(post_data), (response) => {
            STORE.dispatch(this.createdFriends4neo(response));
        });
    }
    createdFriends4neo (response) {
        return {
            type: 'CREATED-FRIENDS-4NEO',
        };
    }
    createFriendsNobita (data) {
        let path = '/friends/nobita';
        let post_data = {
            name:        data.name,
            description: data.description,
        };

        API.post(path, this.encodePostData(post_data), (response) => {
            STORE.dispatch(this.createdFriendsNobita(response));
        });
    }
    createdFriendsNobita (response) {
        return {
            type: 'CREATED-FRIENDS-NOBIT@',
        };
    }
    createFriendship (data) {
        let path = '/friendship';
        let post_data = {
            from_id:     data.from_id,
            to_id:       data.to_id,
            heart_code:  data.heart_code,
            description: data.description,
        };

        API.post(path, this.encodePostData(post_data), (response) => {
            STORE.dispatch(this.createdFriendship(response));
        });
    }
    createdFriendship (response) {
        return {
            type: 'CREATED-FRIENDSHIP',
        };
    }
    /* **************************************************************** *
     *   Pages
     * **************************************************************** */
    fetchPagesSchoolDistrict () {
        API.get('/pages/school-district', (response) => {
            STORE.dispatch(this.fetchedPagesSchoolDistrict(response));
        });
    }
    fetchedPagesSchoolDistrict (response) {

        response['edges'] = response['edges'].map((d) => {
            return {
                _id: d._id,
                source: d.from_id,
                target: d.to_id,
                distance: 30
            };
        });

        let keys = ['nodes', 'edges'];
        for (let key of keys)
            response[key] = this.list2Pool(response[key]);

        return {
            type: 'FETCHED-PAGES-SCHOOL-DISTRICT',
            data: { hearts: response.hearts },
            response: response,
        };
    }
    fetchPagesSchoolDistrictKarma () {
        API.get('/pages/school-district-karma', (response) => {
            STORE.dispatch(this.fetchedPagesSchoolDistrictKarma(response));
        });
    }
    fetchedPagesSchoolDistrictKarma (response) {

        return {
            type: 'FETCHED-PAGES-SCHOOL-DISTRICT-KARMA',
            response: response,
        };
    }
    fetchPagesNobita (id) {
        let path = '/pages/nobita/' + id;

        API.get(path, (response) => {
            STORE.dispatch(this.fetchedPagesNobita(response));
        });
    }
    fetchedPagesNobita (response) {

        return {
            type: 'FETCHED-PAGES-NOBA@',
            response: response,
        };
    }
    fetchPagesStudentDesk (id) {
        let path = '/pages/student-desk';

        API.get(path, (response) => {
            STORE.dispatch(this.fetchedPagesStudentDesk(response));
        });
    }
    fetchedPagesStudentDesk (response) {
        return {
            type: 'FETCHED-PAGES-STUDENT-DESK',
            response: response,
        };
    }
    fetchPagesDoraamon (id) {
        let path = '/pages/doraamon/' + id;

        API.get(path, (response) => {
            STORE.dispatch(this.fetchedPagesDoraamon(response));
        });
    }
    fetchedPagesDoraamon (response) {
        return {
            type: 'FETCHED-PAGES-DORA@MON',
            response: response,
        };
    }
    fetchPagesFutureTool (id) {
        let path = '/pages/future-tools/' + id;

        API.get(path, (response) => {
            STORE.dispatch(this.fetchedPagesFutureTool(response));
        });
    }
    fetchedPagesFutureTool (response) {
        return {
            type: 'FETCHED-PAGES-FUTURE-TOOL',
            response: response,
        };
    }
}
