$ = require 'jquery'
jQBridget = require 'jquery-bridget'
Isotope = require 'isotope-layout'

$ ->

  $.bridget( 'isotope', Isotope )

  $grid = $('.js-isotope').isotope(
    itemSelector: '.js-isotope-item')

  $('.js-isotope-filter').on 'click', 'button', ->
    filterValue = $(this).attr('data-filter')
    $('.js-isotope').isotope filter: filterValue
    $('button').removeClass('active')
    $(this).addClass('active')

  $('.project_link').click ->
    page = $(this).attr('href')
    $('.content').load(page + '.html')
    $('.content').fadeIn(1200)
    $('.projects_list').fadeOut(1200)
    return false

  $('.project_link').click ->
    page = $(this).attr('href')
    $('.content').load(page + '.html')
    $('body').addClass('page_load')
    $('.content').fadeIn(1200)
    $('.back').fadeIn(1200)
    $('.projects_list').fadeOut(1200)

  $('.close_project').click ->
    $('.content').fadeOut(1200)
    $('.back').fadeOut(1200)
    $('.projects_list').fadeIn(1200)

  $('.about_link').click ->
    page = $(this).attr('href')
    $('.content').load(page + '.html')
    $('.content').fadeIn(1200)
    # $('.content').show('slide', {direction: 'left'}, 1000)
    $('.projects_list').fadeOut(1200)
    $('.back').fadeIn(1200)
    return false