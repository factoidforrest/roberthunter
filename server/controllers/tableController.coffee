
module.exports = (app) ->

	app.get '/tables/:table?', (req, res) -> 
		table = req.param 'table'
		if (table)
			capitalizedTable = table.charAt(0).toUpperCase() + table.slice(1)
			res.render 'table.jade', {section: 'tables', table: table, capitalizedTable: capitalizedTable}
		else
			res.render 'tables.jade', {section: 'tables'}

