$ = jQuery

$.fn.ajaxSpin = (opts) ->
  opts = $.extend {}, $.fn.ajaxSpin.options, opts
  count = 0

  loadState = (element, event) ->
    count++
    element.spin opts.spinjsOpts

  doneState = (element, event) ->
    count--
    element.spin false if count == 0

  @each ->
    console.log($(this))
    $e = $(this)
    $(document).on opts.showEvents, (event) ->
      loadState $e, event
    $(document).on opts.hideEvents, (event) ->
      doneState $e, event

$.fn.ajaxSpin.options =
  spinjsOpts: undefined
  showEvents: 'ajax:before page:fetch ajaxStart'
  hideEvents: 'ajax:complete page:change ajaxComplete'

