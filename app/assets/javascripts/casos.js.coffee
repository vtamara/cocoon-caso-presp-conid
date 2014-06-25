# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#

//= require cocoon

$ ->
  $(document).on('change', 'select', (e) ->
    $('form').submit(); 
  )
  $(document).on('change', 'input', (e) ->
    $('form').submit(); 
  )
 $(document).on('cocoon:after-remove', '', (e, p) ->
    $('form').submit(); 
    $('.control-group[style*="display: none"]').remove()
  )

