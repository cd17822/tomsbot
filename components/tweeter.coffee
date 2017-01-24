Twitter = require 'twitter'
rek = require 'rekuire'
config = rek 'config'

client = new Twitter
  consumer_key: config.TWITTER_CONSUMER_KEY
  consumer_secret: config.TWITTER_CONSUMER_SECRET
  access_token_key: config.TWITTER_ACCESS_TOKEN_KEY
  access_token_secret: config.TWITTER_ACCESS_TOKEN_SECRET

module.exports.tweet = (status, cb) ->
    client.post 'statuses/update', status: status, (err, tweet, res) ->
        cb err, status, tweet, res