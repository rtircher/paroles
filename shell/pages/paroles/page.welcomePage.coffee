calatrava.pageView ?= {}

calatrava.pageView.welcomePage = ->
  $page = paroles.pages["welcome-page"]

  # renderCurrencyDropdown = ($select, currencies)->
  #   $select.empty().html ich.currencyDropdownTmpl
  #     currencies: currencies

  # renderSection = (key, data) ->
  #   switch key
  #     when 'inCurrencies' then renderCurrencyDropdown($p('#in_currency'), data)
  #     when 'outCurrencies' then renderCurrencyDropdown($p('#out_currency'), data)
  #     else $p("#" + key).val(data)

  createWallHandler = (handler) ->
    (e) ->
      handler wallName: e.target["wall-name"].value
      e.preventDefault()

  bind: (event, handler) ->
    paroles.log "binding event: #{event}"
    switch event
      when 'create-wall' then $page("#create-wall").off('submit').on 'submit', createWallHandler(handler)
      else $page("#" + event).off('click').on 'click', handler

  render: (message) ->
    paroles.log('rendering...', message)
  # renderSection(section, data) for own section,data of message

  # get: (field) ->
  #   paroles.log('getting...', field)
  #   $page.find("#" + field).val()

  show: -> paroles.log('showing...')
  hide: -> paroles.log('hiding...')
