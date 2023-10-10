var express = require('express');
var router = express.Router();
const GomaController = require('../controllers/goma');

router.get('/', GomaController.getGoma);
router.post('', GomaController.postGoma);



module.exports = router;
