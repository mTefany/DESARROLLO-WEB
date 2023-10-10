let _tradicionalService = null;

class TradicionalController {
    constructor ({ TradicionalService}){
        _tradicionalService = TradicionalService;

    }

    async get (req, res){
        const { tradicionalId} = req.params;
        const tradicional = await _tradicionalService.get(tradicionalId);
        return res.send(tradicional);
    }
    async getAll(req, res) {
        const tradicionaln = await _tradicionalService.getAll();
        return res.send(tradicionaln);
    }
    async create(req, res) {
        const { body } = req;
        const createdTradicional = await _tradicionalService.create(body);
        return res.send(createdTradicional);
    }
    // METODO DELETE
    async delete(req, res) {
        const { tradicionalId } = req.params;
        const deletedTradicional = await _tradicionalService.delete(tradicionalId);
        return res.send(deletedTradicional);

}
    //  METODO UPDATE
    async update(req, res) {
        const { body } = req;
        const { tradicionalId } = req.params;
        const updatedTradicional = await _tradicionalService.update(tradicionalId, body);
        return res.send(updatedTradicional);
    }

  
}

module.exports = TradicionalController;


