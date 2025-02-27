# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.5'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '7.2.2.1'

# Use postgres as the database for Active Record
gem 'pg', '~> 1.4', '>= 1.4.6'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '6.4.3'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem "rack-cors"

gem 'httparty'

gem 'sidekiq'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'brakeman'
  gem 'bundler-audit'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot'
  gem 'rspec', github: 'rspec/rspec', branch: 'main'
  gem 'rspec-core', github: 'rspec/rspec-core', branch: 'main'
  gem 'rspec-expectations', github: 'rspec/rspec-expectations', branch: 'main'
  gem 'rspec-mocks', github: 'rspec/rspec-mocks', branch: 'main'
  gem 'rspec-rails', github: 'rspec/rspec-rails'
  gem 'rspec-support', github: 'rspec/rspec-support', branch: 'main'
  gem 'rubocop'
  gem 'shoulda-matchers', '~> 5.0'
  gem 'webmock'
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end
