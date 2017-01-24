_ = require 'lodash'
mongoose = require 'mongoose'
idValidator = require 'mongoose-id-validator'

schema = mongoose.Schema
  id: String
  q: String
  a1: String
  a2: String
  a3: String
  a4: String
  a5: String
  a6: String
  a7: String

#plugins
schema.plugin idValidator, message : 'Invalid {PATH}.'

#export Model
module.exports = Question = mongoose.model 'question', schema
