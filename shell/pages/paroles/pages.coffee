paroles ?= {}

pages = [
  "welcomePage"
]

pageSelectors = _.map pages, (page) ->
  (sel)-> $(sel, $(page))

paroles.pages = _.object(pages, pageSelectors)
