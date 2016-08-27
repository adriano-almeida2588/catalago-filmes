require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Filmes
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # set the default locale to English
    config.i18n.default_locale = :'pt-BR'
    # if a locale isn't found fall back to this default locale
    config.i18n.fallbacks = true
    # set the possible locales to English and Brazilian-Portuguese
    config.i18n.available_locales = [:en, :'pt-BR']
  end
end
