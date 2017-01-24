router = (require 'express').Router()
rek = require 'rekuire'
gatherer = rek 'components/gatherer'
tweeter = rek 'components/tweeter'

router.post '/', (req, res, next) ->
    query = req.body.query
    # solution = "Gathered from '#{query}': "
    # tweets = 0

    gatherer.findAnswersRelatedTo query, (err, answers) ->
        if err or answers.length == 0
            res.render 'results', answers: answers
        else
            res.render 'results', answers: answers

# for answer in answers
#     tweeter.tweet answer, (err, attemptedStatus, tweet, twitterRes) ->
#         tweets += 1
#         solution += attemptedStatus + ' '
#         if err then solution += '(failed) '

#         if tweets == answers.length
#             res.send solution: solution

module.exports = router
