$(document).ready ->
  $('.child-menu').click ->
    $('.nav-collapse2').removeClass 'hide'

  $(".carousel").carousel ->
    inteval: 5000

  $('.new-testimonial').click ->
    $(this).hide()
    $('.input-testimonial').fadeIn()

  $('.cancel-testimonial').click ->
    $('.reset-testimonial').click()
    $('.input-testimonial').hide()
    $('.new-testimonial').fadeIn()

  $('.submit-testimonial-temp').click ->
    $('.submit-testimonial').click()
    $('.testimonial-loader').show()
