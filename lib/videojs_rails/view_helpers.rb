module VideojsRails
  module ViewHelpers
    def videojs_rails(*options)
      @options = options.extract_options!
      @options[:classes] ||= 'vjs-default-skin'
      @options[:types] ||= [:mp4]
      render "videojs_rails/videojs_rails"
    end
  end
end

