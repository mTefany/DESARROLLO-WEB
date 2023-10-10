const BaseRepository = require('./base.repository');
let _tradicional= null;

class TradicionalRepository extends BaseRepository {
    constructor({Tradicional}){
        super(Tradicional);
        _tradicional = Tradicional
    }
    async getTradicionalByTradicionalName(tradicionalname){
        return await _tradicional.findOne({tradicionalname});
    }
}

module.exports = TradicionalRepository;