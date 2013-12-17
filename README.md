# RenderPartialWithPrefixes

RenderPartalWithPrefixes adds an options 'prefixes' to render :partial in order to be able to have view inheriantance work based on the resouce being rendered, rather than the current controller. 

I'm open to the idea that there might be a better way to do this than monkey patching ActionView.

This has only been tested with Rails 4.0.2, and likely won't work on anything else.

## Installation

Add this line to your application's Gemfile:

    gem 'render_partial_with_prefixes'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install render_partial_with_prefixes

## Usage

render :partial => 'user', :prefixes => [:users, :admins, :members], locals: {user: @search_result}

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
