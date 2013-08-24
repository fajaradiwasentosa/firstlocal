$(document).ready ->
  $('.gallery').addClass('active')
  $('.profile, .home, .trick, .contact, .product').removeClass('active')
  $(".gallery-item").hover ->
    $(".show-image-view").fadeToggle("slow", "linear").toggleClass "hide"
    $(".show-large-image-view").fadeToggle("slow", "swing").toggleClass "hide"
