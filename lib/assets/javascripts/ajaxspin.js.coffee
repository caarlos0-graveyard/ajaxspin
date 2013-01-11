$ = jQuery

$.fn.ajaxSpin = (opts) ->
  opts = $.extend {}, $.fn.ajaxSpin.options, opts
  count = 0

  loadState = (element) ->
    count++
    element.spin opts.spinjsOpts

  doneState = (element) ->
    count--
    if count <= 0
      element.spin false
      count = 0

  @each ->
    $e = $(this)
    $(document).on opts.showEvents, ->
      loadState $e
    $(document).on opts.hideEvents, ->
      doneState $e

$.fn.ajaxSpin.options =
  spinjsOpts: undefined
  showEvents: 'ajax:before page:fetch ajaxStart'
  hideEvents: 'ajax:complete page:change ajaxComplete'

