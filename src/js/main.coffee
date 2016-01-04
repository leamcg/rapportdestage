$ = require 'jquery'
jQBridget = require 'jquery-bridget'
Isotope = require 'isotope-layout'

$ ->

  $.bridget( 'isotope', Isotope )

  iso = new Isotope( '.js-isotope',
    itemSelector: '.js-isotope-item')

  # $grid = $('.js-isotope').isotope(
  #   itemSelector: '.js-isotope-item')

  $('.js-isotope-filter').on 'click', 'button', ->
    filterValue = $(this).attr('data-filter')
    $('.js-isotope').isotope filter: filterValue

  # $('.js-button-group').each (i, buttonGroup) ->
  #   $buttonGroup = $(buttonGroup)
  #   $buttonGroup.on 'click', 'button', ->
  #     $buttonGroup.find('.is-checked').removeClass 'is-checked'
  #     $(this).addClass 'is-checked'
  #     btnChecked = $(this).html()
  #     if btnChecked == 'tout'
  #       btnChecked = 'gallery-item'
  #     $gallery.data('lightGallery').destroy true
  #     $gallery.lightGallery selector: '.js-' + btnChecked + ' a'
