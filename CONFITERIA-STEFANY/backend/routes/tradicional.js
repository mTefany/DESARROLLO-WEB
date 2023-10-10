var express = require('express');
var router = express.Router();

const { TradicionalController } = require('../controllers/index');

router.get('/', TradicionalController.getTradicionaln);
router.post('', TradicionalController.postTradicional);

module.exports = router;
