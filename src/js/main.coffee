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
    $('.content').fadeIn(1600)
    $('.projects_list').fadeOut(1600)
    return false

  $('.project_link').click ->
    page = $(this).attr('href')
    $('.content').load(page + '.html')
    $('body').addClass('page_load')
    $('.content').fadeIn(1600)
    $('.back').fadeIn(1600)
    $('.projects_list').fadeOut(1600)

  $('.close_project').click ->
    $('.content').fadeOut(1600)
    $('.back').fadeOut(1600)
    $('.projects_list').fadeIn(1600)
