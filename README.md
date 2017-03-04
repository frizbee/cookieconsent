# Cookieconsent

The most popular solution to the EU cookie law for Rails applications. Cookie Consent is a free JavaScript plugin for alerting users about the use of cookies on your website. For more information visit: https://cookieconsent.insites.com

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cookieconsent'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cookieconsent

Run the installation generator:

    $ bundle exec rails g cookieconsent:install

Or manually add in application.js:
```ruby
//= require cookieconsent
```
And in application.css:
```ruby
*= require cookieconsent
```

## Usage

Add js snippet to your `views/layouts/application.html.erb` file or before `</head>`

Select theme:

### Light blue

![Alt text](/images/light-blue.png?raw=true "Light blue")

```
<script>
window.addEventListener("load", function(){
window.cookieconsent.initialise({
  "palette": {
    "popup": {
      "background": "#eaf7f7",
      "text": "#5c7291"
    },
    "button": {
      "background": "#56cbdb",
      "text": "#ffffff"
    }
  },
  "content": {
    "message": "This website uses cookies to ensure you get the best experience on our website.",
    "dismiss": "Got it!",
    "link": "Learn more",
    "href": "http://cookies.insites.com/about-cookies"
  }
})});
</script>
```

### Dark yellow

![Alt text](/images/dark-yellow.png?raw=true "Dark yellow")
```
<script>
window.addEventListener("load", function(){
window.cookieconsent.initialise({
  "palette": {
    "popup": {
      "background": "#000"
    },
    "button": {
      "background": "#f1d600"
    }
  },
  "content": {
    "message": "This website uses cookies to ensure you get the best experience on our website.",
    "dismiss": "Got it!",
    "link": "Learn more",
    "href": "http://cookies.insites.com/about-cookies"
  }
})});
</script>
```


### Dark blue

![Alt text](/images/dark-blue.png?raw=true "Dark blue")
```
<script>
window.addEventListener("load", function(){
window.cookieconsent.initialise({
  "palette": {
    "popup": {
      "background": "#252e39"
    },
    "button": {
      "background": "#14a7d0"
    }
  },
  "content": {
    "message": "This website uses cookies to ensure you get the best experience on our website.",
    "dismiss": "Got it!",
    "link": "Learn more",
    "href": "http://cookies.insites.com/about-cookies"
  }
})});
</script>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/cookieconsent. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

