var express = require('express');
var router = express.Router();

const { CakeController } = require('../controllers/index');

router.get('/', CakeController.getCake);
router.post('', CakeController.postCake);

module.exports = router;
