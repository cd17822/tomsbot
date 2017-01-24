router = (require 'express').Router()
rek = require 'rekuire'
gatherer = rek 'components/gatherer'
tweeter = rek 'components/tweeter'

router.post '/', (req, res, next) ->
    status = req.body.status
    tweeter.tweet '@tomandmartys ' + status, (err, attemptedStatus) ->
        res.send err: err, attemptedStatus: attemptedStatus

module.exports = router
