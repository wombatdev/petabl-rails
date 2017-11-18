require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
# require "sprockets/railtie"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PetablApi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true

    # in config/application.rb
    # config.action_dispatch.default_headers = {
    #     'Access-Control-Allow-Origin' => 'http://localhost:8080',
    #     'Access-Control-Request-Method' => %w{GET POST OPTIONS}.join(",")
    # }

    # global options responder -> makes sure OPTION request for CORS endpoints work
    # match '*path', via: [:options], to: lambda {|_| [204, { 'Content-Type' => 'text/plain' }]}

    config.middleware.use Rack::Cors do
        allow do
            origins 'http://localhost:8080'
            resource '*',
            :headers => :any,
            :methods => [:get, :post, :delete, :put, :options]
        end
    end

  end
end
