const BaseRepository = require('./base.repository');
let _goma= null;

class GomaRepository extends BaseRepository {
    constructor({Goma}){
        super(Goma);
        _goma = Goma
    }
    async getGomaByGomaName(gomaname){
        return await _goma.findOne({gomaname});
    }
}

module.exports = GomaRepository;