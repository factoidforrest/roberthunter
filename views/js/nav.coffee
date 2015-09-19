$ = require 'jquery'

$(document).ready ->

  dataElement = $('#active-section')
  section = dataElement.attr('data-active')
  table = dataElement.attr('data-table')
  console.log('Active section: ', section)
  console.log('Active table: ', table)
  $('#' + section).addClass('active')
  $('#' + table).addClass('active')