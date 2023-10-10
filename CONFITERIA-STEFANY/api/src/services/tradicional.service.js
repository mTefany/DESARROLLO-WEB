const BaseService = require('./base.service')
let _tradicionalRepository = null;

class TradicionalService extends BaseService {
    constructor({ TradicionalRepository }) {
        super(TradicionalRepository);
        _tradicionalRepository = TradicionalRepository;
    }
    async getTradicionalByTradicionalName(tradicionalname) {
        return await _tradicionalRepository.getTradicionalByTradicionalName(tradicionalname);
    }
}

module.exports = TradicionalService;