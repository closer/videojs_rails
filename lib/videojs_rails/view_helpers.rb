module VideojsRails
  module ViewHelpers
    def videojs_rails(*options)
      @defs = {
        id:         "video-#{Time.now.nsec}",
        classes:    "video-js vjs-default-skin",
        controls:   "",
        preload:    "metadata",
        poster:     "",
        data_setup: "{}",
        width: "1024px",
        height: "640px",
        types: [:mp4]
      }
      @options = @defs.merge(options.extract_options!)
      render "videojs_rails/videojs_rails"
    end
  end
end

