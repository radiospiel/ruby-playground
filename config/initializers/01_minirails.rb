require "logger"
# All the Rails that we need.

module MiniRails
  # --- SystemInfo ------------------------------------------------------------

  module SystemInfo
    def env
      @env ||= ENV['RAILS_ENV'] || ENV['RACK_ENV'] || 'development'
    end

    def root
      @root ||= File.expand_path(File.join(File.dirname(__FILE__), '../..'))
    end
  end
  extend SystemInfo

  # --- Logging ---------------------------------------------------------------

  module Logging
    attr_accessor :logger
  end
  extend Logging
  self.logger = ::Logger.new("log/#{env}.log")
end

# -----------------------------------------------------------------------------

Rails = MiniRails
