$ = require 'jquery'
jQBridget = require 'jquery-bridget'
Masonry = require 'masonry-layout'

$ ->

  console.log 'test2'
  if $('.js-masonry').length
    console.log 'test'
    msnry = new Masonry('.js-masonry', itemSelector: '.js-grid-item')
    $(window).on 'load', ->
      msnry.layout()
