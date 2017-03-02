require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsBootStarter
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Disable inherited resource
    config.generators do |g|
      g.assets = false
      g.helper = false
      g.view_specs = false
      g.test_framework :rspec, fixture: false
      g.factory_girl dir: 'spec/factories', suffix: 'factory'
    end
  end
end
