paroles ?= {}

paroles.start = ->
  paroles.controller
    views:
      welcomePage: calatrava.bridge.pages.pageNamed "welcomePage"
    changePage: calatrava.bridge.changePage
    ajax: calatrava.bridge.request

  calatrava.bridge.changePage "welcomePage"
