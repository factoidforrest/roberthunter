##sass = require('node-sass')
##fs = require('fs')


exports.home = (req, res) -> 
	res.render 'home.jade', {section: 'home'}

  

exports.tables = (req, res) -> 
	table = req.param 'table'
	if (table)
		res.render 'table.jade', {section: 'tables', table: table}
	else
		res.render 'tables.jade', {section: 'tables'}

