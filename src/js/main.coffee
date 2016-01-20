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