require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module WidderWeb
  class Application < Rails::Application
    config.time_zone = 'Bern'
    config.i18n.default_locale = :'de-CH'

    config.active_record.raise_in_transactional_callbacks = true

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
