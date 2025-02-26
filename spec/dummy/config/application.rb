require File.expand_path("../boot", __FILE__)

# Pick the frameworks you want:
require "active_record/railtie"

Bundler.require(*Jets.groups)
require "fx"

module Dummy
  class Application < Rails::Application
    config.cache_classes = true
    config.eager_load = false
    config.active_support.deprecation = :stderr
  end
end
