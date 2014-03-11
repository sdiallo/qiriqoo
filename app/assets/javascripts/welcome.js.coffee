# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

 

jQuery ->
	blueimp.Gallery document.getElementById("links").getElementsByTagName("a"),
		container: "#blueimp-gallery-carousel"
		carousel: true

  resizeback = ->
    h = $(window).height()
    $(".home-back,.home-full,.home-doted").height h  if h > 500
    mt = ((h - $("#home-cont").height()) / 2) * 1.5
    $("#home-cont").css top: mt + "px"  if mt > 50

  $(window).resize ->
    resizeback()
    return

  $(document).ready ->
    resizeback()



  $container = $("#home-technos").masonry()
  $container.imagesLoaded ->
    $container.masonry()


  $(document).on "click", ".home-scroll-down a", ->
    h = $("#technos-scroll").position().top
    $("body,html").animate
      scrollTop: h,
      3000, "easeInOutQuint"
    $(".item").removeClass("active")
    $("#compet").addClass("active")
    false
  
  $(document).on "click", "#compet", ->
    $("body, html").animate
      scrollTop: $("#technos-scroll").position().top,
      2000,  "easeInOutQuint"
    $(".item").removeClass("active")
    $("#compet").addClass("active")
    false


  $(document).on "click", "#exp", ->
    $("body, html").animate
      scrollTop: $("#profile").position().top,
      2000,  "easeInOutQuint"
    $(".item").removeClass("active")
    $("#exp").addClass("active")
    false

  $(document).on "click", "#proj", ->
    $("body, html").animate
      scrollTop: $("#project").position().top,
      2000,  "easeInOutQuint"
    $(".item").removeClass("active")
    $("#proj").addClass("active")
    false

  $(document).on "click", "#home", ->
    $("body, html").animate
      scrollTop: $("#top-menu").position().top,
      2000,  "easeInOutQuint"
    $(".item").removeClass("active")
    $("#home").addClass("active")
    false
