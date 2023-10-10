const { Router } = require('express');

module.exports = function ({ GomaController }) {
    const router = Router();
    router.get('/:gomaId', GomaController.get);
    router.get('', GomaController.getAll);
    router.post('/', GomaController.create);
    router.patch('/:gomaId', GomaController.update);
    router.delete('/:gomaId', GomaController.delete);

    return router;
}
