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

Add js snippet to your `views/layouts/application.html.erb` file before `</head>`

###Select palette:

#### Light blue

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

#### Dark yellow

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


#### Dark blue

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

#### Gray blue

![Alt text](/images/gray-blue.png?raw=true "Gray blue")
```
<script>
window.addEventListener("load", function(){
window.cookieconsent.initialise({
  "palette": {
    "popup": {
      "background": "#edeff5",
      "text": "#838391"
    },
    "button": {
      "background": "#4b81e8"
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

#### Gray green

![Alt text](/images/gray-green.png?raw=true "Gray green")
```
<script>
window.addEventListener("load", function(){
window.cookieconsent.initialise({
  "palette": {
    "popup": {
      "background": "#efefef",
      "text": "#404040"
    },
    "button": {
      "background": "#8ec760",
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

### Select theme
Theme layouts are: `"classic"`; `"edgeless"`; block by default and no need
to add theme.

```
window.addEventListener("load", function(){
window.cookieconsent.initialise({
  ....
  "theme": "classic",
  ....
})});
```

### Select position
Positions are: `"top"`; `"bottom-right"`; `"bottom-left"`; and top (pushdown)
add `"position": true` ;
bottom is by default, no need to add position if it is bottom.

```
window.addEventListener("load", function(){
window.cookieconsent.initialise({
  ....
  "position": "top",
  "static": true /* if top (pushdown) only */
  ....
})});
```

### Compliance Type
1. Just tell users that we use cookies
  * You tell your users that you use cookies, and that by continuing to use your website they accept them.
2. Let users opt out of cookies (Advanced)
  * You tell your users that you use cookies, and give them one button to disable cookies, and another to dismiss the message.
3. Ask users to opt into cookies (Advanced)
  * You tell your users that you wish to use cookies, and give them one button to enable cookies, and another to refuse them.

```
window.addEventListener("load", function(){
window.cookieconsent.initialise({
  ....
  "type": "opt-out",
  "content": {
    "deny": "Refuse cookies"
  }
  ....
})});
```

```
window.addEventListener("load", function(){
window.cookieconsent.initialise({
  ....
  "type": "opt-in",
  "content": {
    "allow": "Allow cookies"
  }
  ....
})});
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/cookieconsent. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

