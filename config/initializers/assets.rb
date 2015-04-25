# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( website.js )
Rails.application.config.assets.precompile += %w( website.css )

# Themes
Rails.application.config.assets.precompile += %w( themes/flatly.css )
Rails.application.config.assets.precompile += %w( themes/united.css )
Rails.application.config.assets.precompile += %w( themes/lumen.css )
Rails.application.config.assets.precompile += %w( themes/superhero.css )
Rails.application.config.assets.precompile += %w( themes/paper.css )
