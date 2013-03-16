# VideoJS for Rails 3.1 Asset Pipeline

## Installation

Add to your Gemfile

```ruby
gem 'videojs_rails'
```

And run bundle to install the library.

```ruby
bundle

```

Add the resources to your application.js file

```coffeescript
# app/assets/javascripts/application.js
//= require video-js

```

You can optionally include skins by requiring in app/assets/stylesheets/application.css

```sass
/*
*= require_self
*= require video-js
*/
```

## Usage

```erb
<%= videojs_rails source: "/path/to/video", types: [:mp4, :webm], data_setup: '{"width": 600, "height": 320}' %>
```

## Notes
So far as I can tell the current implementation of `video.js` only allows you to explictly set width and height with pixels (no percentages). With this version of `videojs_rails` you will need to pass your width and height as JSON in the data_setup attribute of the helper. If you have input as to how to get using `width` and `height` working as normal attributes... Pull Request away

## Resources
http://videojs.com/
http://videojs.com/#getting-started

