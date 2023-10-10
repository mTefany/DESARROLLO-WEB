const { Router } = require('express');

module.exports = function ({ TradicionalController }) {
    const router = Router();
    router.get('/:tradicionalId', TradicionalController.get);
    router.get('', TradicionalController.getAll);
    router.post('/', TradicionalController.create);
    router.patch('/:tradicionalId', TradicionalController.update);
    router.delete('/:tradicionalId', TradicionalController.delete);

    return router;
}
