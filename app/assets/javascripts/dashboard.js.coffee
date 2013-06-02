# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->

  $('.child-menu').click ->
    $('.nav-collapse2').removeClass 'hide'

  $(".carousel").carousel ->
    inteval: 5000
