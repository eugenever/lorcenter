require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Lorcenter
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    
    config.i18n.default_locale = :ru

    #в случае [deprecated] I18n.enforce_available_locales will default to true in the future
    I18n.enforce_available_locales = true

    #совместимость с файлопроводом из листинга 5.4
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)

    config.assets.enabled = true
    config.assets.precompile += Ckeditor.assets
    config.autoload_paths += %W(#{config.root}/app/models/ckeditor)
    config.assets.precompile += ['*ckeditor/skins/moono/icons.png']
    
  end
end
