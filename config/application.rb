require_relative 'boot'

require 'rails/all'


Bundler.require(*Rails.groups)

module CommunityPosts
  class Application < Rails::Application
    I18n.config.available_locales = :ja
    I18n.default_locale = :ja
    config.load_defaults 5.2
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local

  end

end
