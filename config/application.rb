require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Mimis
  class Application < Rails::Application
    config.assets.paths << Rails.root.join('vendor', 'assets', 'bower_components')    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.action_view.field_error_proc = Proc.new { |html_tag, instance| html_tag }
    config.generators do |g|
      g.stylesheets = false
      g.scaffold_controller "scaffold_controller"
      g.test_framework :rspec, fixture: true, fixture_replacement: :factory_bot, helper_specs: false, view_specs: false, routing_specs: false, controller_specs: false
    end
  
  end
end