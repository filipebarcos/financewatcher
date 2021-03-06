require File.expand_path('../boot', __FILE__)

require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "active_resource/railtie"

Bundler.require(:default, Rails.env) if defined?(Bundler)

module Financewatcher
  class Application < Rails::Application
    config.i18n.load_path += Dir[Rails.root.join("config/locales/**/*.yml").to_s]
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
    config.active_record.whitelist_attributes = true
    config.assets.enabled = false
  end
end
