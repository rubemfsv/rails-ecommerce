source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# The safe Markdown parser, reloaded.
gem 'redcarpet'
# Help ActiveRecord::Enum to work fine with I18n
gem 'enum_help'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby
# Centralization of locale data collection for Ruby on Rails.
gem 'rails-i18n', '~> 5.1'
# Flexible authentication solution for Rails with Warden
gem 'devise'
# Rails gem of the Bootstrap based admin theme SB Admin 2
gem 'bootstrap_sb_admin_base_v2'
# Translations for the devise gem
gem 'devise-i18n'
# A gem to automate using jQuery with Rails
gem 'jquery-rails'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Authorization
gem 'pundit'
# A library for generating fake data such as names, addresses, and phone numbers.
gem 'faker'
# Markdown Lorem Ipsum generator
gem 'doctor_ipsum'
# O Lero-lero Generator é uma ferramenta capaz de gerar frases que 'falam' muita coisa mas que não tem conteúdo algum.
gem 'lerolero_generator'
# Integration of RubyMoney - Money with Rails
gem 'money-rails'
# Easy file attachment management for ActiveRecord
gem 'paperclip', '~> 5.0.0'
# jQuery UI for the Rails asset pipeline
gem 'jquery-ui-rails'
# A Ruby Gem that wraps the functionality of jQuery Raty library
gem 'ratyrate'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false
# Bootstrap Growl to notifyjs
gem 'rails-assets-bootstrap.growl'
# Animate CSS
gem 'rails-assets-animate-css'
# Friendly Id Gem
gem 'friendly_id'
# ⚡ A Scope & Engine based, clean, powerful, customizable and sophisticated paginator for Ruby webapps
gem 'kaminari'
# Translations for the kaminari gem
gem 'kaminari-i18n'

source 'https://rails-assets.org' do
# Bootbox notifications
  gem 'rails-assets-bootbox'
  # The most popular front-end framework for developing responsive, mobile first projects on the web.
  gem 'rails-assets-bootstrap', '3.3.7'
  # A simple, versatile notification library
  gem 'rails-assets-notifyjs'
  # BootstrapMarkdownEditor for the Rails asset pipeline
  gem 'rails-assets-bootstrap-markdown'
  # Marked
  gem 'rails-assets-marked'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Better Errors replaces the standard Rails error page with a much better and more useful error page. It is also usable outside of Rails in any Rack app as Rack middleware.
  gem "better_errors"
  gem "binding_of_caller"
  # Generate Entity-Relationship Diagrams for Rails applications
  gem 'rails-erd'

end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
