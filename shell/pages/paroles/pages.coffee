paroles ?= {}

pages = [
  "welcome-page"
]

pageSelectors = _.map pages, (page) ->
  (sel)-> $(sel, $('#' + page))

paroles.pages = _.object(pages, pageSelectors)
