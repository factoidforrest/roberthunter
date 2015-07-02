

module.exports = (app) ->

	require('./controllers/indexController')(app)
	require('./controllers/tableController')(app)
	