# frozen_string_literal: true

require "logger"

# MiniRails provides a minimal Rails implementation
module MiniRails
  # provides Rails.env and Rails.root
  module SystemInfo
    def env
      @env ||= ENV["RAILS_ENV"] || ENV["RACK_ENV"] || "development"
    end

    def root
      @root ||= Pathname.new File.expand_path(File.join(File.dirname(__FILE__), "../.."))
    end
  end
  extend SystemInfo

  # provides Rails.logger
  module Logging
    attr_accessor :logger
  end
  extend Logging
  self.logger = ::Logger.new("log/#{env}.log")
end

# -----------------------------------------------------------------------------

Rails = MiniRails
