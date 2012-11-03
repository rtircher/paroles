paroles ?= {}

paroles.controller = ({views, changePage, ajax, urls}) ->

  currencyDropdownViewMessage = (selectedCurrency, unselectableCurrency) ->
    _.map currencies, (c) ->
      code: c,
      enabled: c != unselectableCurrency
      selected: c == selectedCurrency

  convert = () ->
    views.conversionForm.get 'in_amount', (inAmount) ->
      outRate = currencyRate[outCurrency]
      inRate = currencyRate[inCurrency]
      views.conversionForm.render
        out_amount: (Math.round(inAmount * (outRate / inRate) * 100)) / 100

  views.welcomePage.bind 'create-wall', (params) ->
    paroles.log "creating wall: #{params}"
    ajax
      url:    urls.walls
      method: 'POST'
      body: params
      success: () -> paroles.log "Wall created"
      failure: () -> paroles.log "Wall creation failure"


    # views.conversionForm.bind 'selectedInCurrency', ->
    #   views.conversionForm.get 'in_currency', (in_currency) ->
    #     inCurrency = in_currency
    #     views.conversionForm.render
    #       outCurrencies: currencyDropdownViewMessage outCurrency, inCurrency

    # views.conversionForm.bind 'selectedOutCurrency', ->
    #   views.conversionForm.get 'out_currency', (out_currency) ->
    #     outCurrency = out_currency
    #     views.conversionForm.render
    #       inCurrencies: currencyDropdownViewMessage inCurrency, outCurrency

    # views.conversionForm.render
    #   inCurrencies: currencyDropdownViewMessage inCurrency, outCurrency
    #   outCurrencies: currencyDropdownViewMessage outCurrency, inCurrency
    #   in_amount: 1
