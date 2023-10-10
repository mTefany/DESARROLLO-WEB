const BaseService = require('./base.service')
let _cakeRepository = null;

class CakeService extends BaseService {
    constructor({ CakeRepository }) {
        super(CakeRepository);
        _cakeRepository = CakeRepository;
    }
    async getCakeByCakeName(cakename) {
        return await _cakeRepository.getCakeByCakeName(cakename);
    }
}

module.exports = CakeService;