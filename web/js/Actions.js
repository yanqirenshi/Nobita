class Actions extends Vanilla_Redux_Actions {
    movePage (data) {
        return {
            type: 'MOVE-PAGE',
            data: data
        };
    }
    loadData () {
        API.get('/rsc/path', function (response) {
            STORE.dispatch(this.loadedData(response));
        }.bind(this));
    }
    loadedData (response) {
        return {
            type: 'LOADED-DATA',
            data: {}
        };
    }
}
