var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
  res.render('inicio', { title: 'Confiteria Stefany ' });
});

module.exports = router; 
