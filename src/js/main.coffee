$ = require 'jquery'
jQBridget = require 'jquery-bridget'
Masonry = require 'masonry-layout'

$ ->

  if $('.js-masonry').length
    msnry = new Masonry('.js-masonry', itemSelector: '.js-grid-item')
    $(window).on 'load', ->
      msnry.layout()

  $('.home_link').click ->
    page = $(this).attr('href')
    $('.content').load(page + '.html')
    $('.content').fadeIn(1200)
    $('.projects_list').fadeOut(1200)
    return false

  $('.home_link').click ->
    page = $(this).attr('href')
    $('.content').load(page + '.html')
    $('body').addClass('page_load')
    $('.content').fadeIn(1200)
    $('.back').fadeIn(1200)
    $('.projects_list').fadeOut(1200)
    console.log 'test'

  $('.close_project').click ->
    $('.content').fadeOut(1200)
    $('.back').fadeOut(1200)
    $('.projects_list').fadeIn(1200)

  $('.about_link').click ->
    page = $(this).attr('href')
    $('.content').load(page + '.html')
    $('.content').fadeIn(1200)
    $('.projects_list').fadeOut(1200)
    $('.back').fadeIn(1200)
    return false


