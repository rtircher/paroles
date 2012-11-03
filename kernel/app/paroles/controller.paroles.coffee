paroles ?= {}

paroles.controller = ({views, changePage, ajax}) ->

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

  views.welcomePage.bind 'create-wall', () ->
    ajax url: "http://"


  # if options.contentType?
  #   options.customHeaders ||= {}
  #   options.customHeaders['Content-Type'] = options.contentType
  # calatrava.bridge.requests.issue(
  #   options.url,
  #   options.method,
  #   options.body,
  #   options.success,
  #   options.failure,
  #   options.customHeaders
  # )


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
