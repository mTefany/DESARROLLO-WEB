let _cakeService = null;

class CakeController {
    constructor({ CakeService }) {
        _cakeService = CakeService;
    }
    // get
    async get(req, res) {
        const { cakeId } = req.params;
        const cake = await _cakeService.get(cakeId);
        return res.send(cake);
    }

    // getAll
    async getAll(req, res) {
        const cakes = await _cakeService.getAll();
        return res.send(cakes);
    }

    // create
    async create(req, res) {
        const { body } = req;
        const createdCakes = await _cakeService.create(body);
        return res.send(createdCakes);
    }

    // update
    async update(req, res) {
        const { body } = req;
        const {cakeId } = req.params;
        const updatedCake = await _cakeService.update(cakeId, body);
        return res.send(updatedCake);
    }
    // delete
    async delete(req, res) {
        const { cakeId } = req.params;
        const deletedCake = await _cakeService.delete(cakeId);
        return res.send(deletedCake);

    }
}

module.exports = CakeController;