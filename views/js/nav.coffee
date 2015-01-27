define ['jquery'], ($) ->
	dataElement = $('#active-section')
	section = dataElement.attr('data-active')
	table = dataElement.attr('data-table')
	console.log('section ', section)
	console.log('table ', table)
	$('#' + section).addClass('active')
	$('#' + table).addClass('active')