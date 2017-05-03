require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
require "dotenv-rails"



module DevcampPortfolio
  class Application < Rails::Application
    config.eager_load_paths << "#{Rails.root}/lib"
  end
end
