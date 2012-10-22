module VideojsRails
  module ViewHelpers
    def videojs_rails(*options)
      @options = options.extract_options!
      @options[:classes] ||= 'vjs-default-skin'
      render "videojs_rails/videojs_rails"
    end
  end
end

