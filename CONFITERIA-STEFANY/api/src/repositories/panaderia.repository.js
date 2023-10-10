const BaseRepository = require('./base.repository');
let _cake= null;

class CakeRepository extends BaseRepository {
    constructor({Cake}){
        super(Cake);
        _cake = Cake
    }
    async getCakeByCakeName(cakename){
        return await _cake.findOne({cakename});
    }
}

module.exports = CakeRepository;