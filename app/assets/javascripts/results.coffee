# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#start_date').datepicker({dateFormat: 'dd/mm/yy'})
  $('#end_date').datepicker({dateFormat: 'dd/mm/yy'})
