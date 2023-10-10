const BaseService = require('./base.service')
let _gomaRepository = null;

class GomaService extends BaseService {
    constructor({ GomaRepository }) {
        super(GomaRepository);
        _gomaRepository = GomaRepository;
    }
    async getGomaByGomaName(gomaname) {
        return await _gomaRepository.getGomaByGomaName(gomaname);
    }
}

module.exports = GomaService;