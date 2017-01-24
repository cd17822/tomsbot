express = require 'express'
app = express()
mongoose = require 'mongoose'
bodyParser = require 'body-parser'
rek = require 'rekuire'
indexRouter = rek 'routes/index'
userRouter = rek 'routes/user'
configs = rek 'config'
server = rek 'components/server'

# connect to mongo
mongoose.connect configs.MONGO_URI

# configure server
app.disable 'x-powered-by'
app.use bodyParser.urlencoded extended: yes
app.use bodyParser.json()

# serve static assets
app.use express.static 'public'

# use jade templating engine
app.set 'view engine', 'jade'
app.set 'views', 'views'

# configure routes
app.use '/', indexRouter
app.use '/users', userRouter

# configure error handling
app.use (err, req, res, next) ->
  if err.name is 'ValidationError'
    params = (param: param, message: info.message for param, info of err.errors)
    server.sendError res, 400, 'invalid_params', 'Invalid request.', params
  else
    res.sendStatus 500
    console.error err

# start server
PORT = 3005
app.listen PORT, -> console.log "Listening on #{PORT}"
