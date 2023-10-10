let _gomaService = null;

class GomaController {
    constructor({ GomaService }) {
        _gomaService = GomaService;
    }
    // get
    async get(req, res) {
        const { gomaId } = req.params;
        const goma = await _gomaService.get(gomaId);
        return res.send(goma);
    }

    // getAll
    async getAll(req, res) {
        const goma = await _gomaService.getAll();
        return res.send(goma);
    }

    // create
    async create(req, res) {
        const { body } = req;
        const createdGoma = await _gomaService.create(body);
        return res.send(createdGoma);
    }

    // update
    async update(req, res) {
        const { body } = req;
        const { gomaId } = req.params;
        const updatedGoma = await _gomaService.update(gomaId, body);
        return res.send(updatedGoma);
    }

    // delete
    async delete(req, res) {
        const { gomaId } = req.params;
        const deletedGoma = await _gomaService.delete(gomaId);
        return res.send(deletedGoma);

    }
}

module.exports = GomaController;