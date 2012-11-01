paroles ?= {}

pages = [
  "welcomePage"
]

paroles.pages = _.map pages, (page) ->
  (sel)-> $(sel, $(page))
