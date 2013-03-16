# VideoJS for Rails Asset Pipeline

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

## Helper Method Usage

```erb
<%= videojs_rails source: "/path/to/video", types: [:mp4, :webm], data_setup: '{"width": 600, "height": 320}' %>
```

The helper method takes a hash of attributes, and creates the needed markup to implement your video. The following is a table of possible keys you can you along with the default values that will be used if you ommit the attr

| Key         | Default                       | Description   |
| -------     | ---------                     | ------------  |
| `id`        | `'video' + timestamp`         | Used as the id for your video.js video |
| `source`    | none                          | The path to your video files w/o extension |
| `types`     | `[:mp4]`                      | An array of video types (extensions) to use for `source` tags |
| `data_setup`| `'{}'`                        | JSON options see [video.js documentation](https://github.com/zencoder/video-js/blob/master/docs/options.md) |
| `classes`   | `"video-js vjs-default-skin"` | The classes to assign to your video object |
| `preload`   | `"metadata"`                  | Value to use for preloading (`'none', 'auto', 'metadata'`) |
| `poster`    | `""`                          | Path to a poster file to use with the video |


## Notes
So far as I can tell the current implementation of `video.js` only allows you to explictly set width and height with pixels (no percentages). With this version of `videojs_rails` you will need to pass your width and height as JSON in the `data_setup` attribute of the helper. If you have input as to how to get using `width` and `height` working as normal attributes... Pull Request away

## Resources
http://videojs.com/
http://videojs.com/#getting-started
https://github.com/zencoder/video-js/blob/master/docs/index.md
