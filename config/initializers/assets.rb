# Add a path for custom font files
Rails.application.config.assets.paths << "#{Rails.root}/app/assets/fonts"

# Add custom font files and images to asset pipeline
Rails.application.config.assets.precompile += %w( .svg .eot .woff .ttf .jpg )