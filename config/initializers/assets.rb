# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.precompile += %w( spotlight_main_logo.png )
# Add additional assets to the asset load path
Rails.application.config.assets.precompile += %w( person.png )
# Rails.application.config.assets.paths << Emoji.images_path
Rails.application.config.assets.precompile += %w( icon4.png )
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )