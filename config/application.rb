require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Hockeyhub
  class Application < Rails::Application
    config.autoload_paths += [config.root.join('app')]
  end
end
