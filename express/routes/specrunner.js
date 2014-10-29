var express, router;

express = require('express');

router = express.Router();

router.get('/specrunner', function(req, res) {
  return res.render('specrunner');
});

module.exports = router;
