# Ajaxspin

A simple asset gem that provide an out-of-the box ajax status spin indicator
compatible with turbolinks and jquery/jquery_ujs events without any modification.

## Installation

Add these lines to your application's Gemfile assets group:

    gem 'coffee-rails'
    gem 'spinjs-rails'
    gem 'ajaxspin'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ajaxspin

## Usage

Add to your `application.js` or `application.js.coffee`:

    #= require jquery.spin
    #= require ajaxspin

Then, in somewhere, bind it to your `ready` and/or `page:change` events:

    $(document).ready ->
      $('.navbar').ajaxSpin()

The following events are already binded:
- showEvents: ajax:before, page:fetch and ajaxStart
- hideEvents: ajax:complete, page:change and ajaxComplete

You can easily modify this behavior (and the spin.js behavior) passing your
events as options:

    $('.navbar').ajaxSpin
      showEvents: 'ajax:before page:fetch ajaxStart myCustomShowEvent'
      hideEvents: 'ajax:complete page:change ajaxComplete myCustomHideEvent'
      spinjsOpts:
        lines: 7
        length: 6
        width: 3
        radius: 5
        corners: 1
        rotate: 0
        color: '#000'
        speed: 1.1
        trail: 100
        shadow: false
        hwaccel: false
        className: 'spinner'
        zIndex: 2e9
        top: 'auto'
        left: 'auto'

That's all.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
