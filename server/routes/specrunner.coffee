express = require('express')
router = express.Router()

# Get home page
router.get '/specrunner', (req, res) ->
  res.render('specrunner')

module.exports = router