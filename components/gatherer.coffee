rek = require 'rekuire'
Question = rek 'models/question'

# csv data imported to mongo with following command:
# mongoimport --db tomsbot --collection feuddata --type csv --headerline --file feuddata.csv

module.exports.findAnswersRelatedTo = (query, cb) ->
    Question.find q: $regex: query, $options: "i", (err, questions) ->
        if err then cb err, null
        else
            fields = ['a1', 'a2', 'a3', 'a4', 'a5', 'a6', 'a7']
            answers = []

            for question in questions
                for field in fields
                    if question[field] != ''
                        answers.push question[field]

            cb null, answers
