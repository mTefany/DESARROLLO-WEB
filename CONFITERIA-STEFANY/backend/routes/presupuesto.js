var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
  res.render('presupuesto', { title: 'Presupuesto' });
});

module.exports = router; 
