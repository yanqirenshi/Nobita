class Store extends Vanilla_Redux_Store {
    constructor(reducer) {
        super(reducer, {
        });
    }
    init () {
        this._contents = Immutable.Map({});
        return this;
    }
}
