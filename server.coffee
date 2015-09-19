
express = require('express')
app = express()
sass = require('node-sass-middleware')
path = require('path')
favicon = require('serve-favicon')
compression = require('compression')
morgan = require('morgan')
require('./server/build')


production = process.env.PRODUCTION == 'true'

app.use(compression())
app.set('views', __dirname + '/views')
app.use(morgan('dev'))
app.use(favicon(path.join(__dirname,'public','images','favicon.ico')))
app.locals.uglify = production

app.set('view engine', 'jade')


app.use(sass({
  src: __dirname + '/views/stylesheets',
  dest: __dirname + '/public',
  debug: !production,
  outputStyle: if production then 'compressed' else 'nested'
}))

#TODO: switch to a compiler with compression support

if production
	cachetime = 86400000
else
	cachetime = 0

#static assets
app.use(express.static(__dirname + '/public', { maxAge: cachetime }))

#static file routes

require('./server/routes')(app)
#app.get('/', handlers.home)
#app.get('/tables/:table?', handlers.tables)

app.listen(process.env.PORT || 3000)

