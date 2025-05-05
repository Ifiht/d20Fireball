require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module D20Fireball
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.2

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w[assets tasks])

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    #config.assets.paths << Rails.root.join("vendor", "habitica-images", "backgrounds")
    #config.assets.paths << Rails.root.join("vendor", "habitica-images", "customize", "beards")
    #config.assets.paths << Rails.root.join("vendor", "habitica-images", "customize", "chairs")
    #config.assets.paths << Rails.root.join("vendor", "habitica-images", "customize", "flowers")
    #config.assets.paths << Rails.root.join("vendor", "habitica-images", "customize", "hair")
    #config.assets.paths << Rails.root.join("vendor", "habitica-images", "customize", "shirts")
    #config.assets.paths << Rails.root.join("vendor", "habitica-images", "customize", "skin")
    #config.assets.paths << Rails.root.join("vendor", "habitica-images", "gear", "armor")
    #config.assets.paths << Rails.root.join("vendor", "habitica-images", "gear", "back")
    #config.assets.paths << Rails.root.join("vendor", "habitica-images", "gear", "body")
    #config.assets.paths << Rails.root.join("vendor", "habitica-images", "gear", "events")
    #config.assets.paths << Rails.root.join("vendor", "habitica-images", "gear", "eyewear")
    #config.assets.paths << Rails.root.join("vendor", "habitica-images", "gear", "head")
    #config.assets.paths << Rails.root.join("vendor", "habitica-images", "gear", "headAccessory")
    #config.assets.paths << Rails.root.join("vendor", "habitica-images", "gear", "shield")
    config.assets.paths << Rails.root.join("vendor", "habitica-images")
  end
end
