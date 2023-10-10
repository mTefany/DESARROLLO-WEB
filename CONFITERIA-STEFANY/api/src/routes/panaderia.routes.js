const { Router } = require('express');

module.exports = function ({ CakeController }) {
    const router = Router();
    router.get('/:cakeId', CakeController.get);
    router.get('', CakeController.getAll);
    router.post('/', CakeController.create);
    router.patch('/:cakeId', CakeController.update);
    router.delete('/:cakeId', CakeController.delete);

    return router;
}
