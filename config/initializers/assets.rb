# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.paths << Rails.root.join("app", "assets", "fonts")
Rails.application.config.assets.precompile += %w(
    application.js
    init.js
    style.css
    style-wide.css
    style-normal.css
    style-narrow.css
    style-mobile.css
    font-awesome.min.css
    skel.min.js
    )