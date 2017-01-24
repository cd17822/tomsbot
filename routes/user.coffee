_ = require 'lodash'
router = (require 'express').Router()
rek = require 'rekuire'
User = rek 'models/user'

# create new user
router.post '/', (req, res, next) ->
  user = new User _.pick req.body, 'first_name', 'last_name', 'email', 'phone', 'password'

  user.save (err, user) ->
    if err then next err
    else (res.status 201).send user: user

module.exports = router
