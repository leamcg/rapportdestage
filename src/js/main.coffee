$ = require 'jquery'
jQBridget = require 'jquery-bridget'
Masonry = require 'masonry-layout'

$ ->

  if $('.js-masonry').length
    msnry = new Masonry('.js-masonry', itemSelector: '.js-grid-item')
    $(window).on 'load', ->
      msnry.layout()