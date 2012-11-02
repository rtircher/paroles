paroles ?= {}

pages = [
  "welcomePage"
]

pageSelectors = _.map pages, (page) ->
  (sel)-> $(sel, $(page))

zipmap = (keys, values) ->
  map = {}
  _.each keys, (key, index) ->
     if values[index]
      obj = {}
      obj[key] = values[index]
      _.extend map, obj
  map

paroles.pages = zipmap pages, pageSelectors
