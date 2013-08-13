source 'https://rubygems.org'

gem 'rails', '3.2.12'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3', '1.3.7', :group => :development

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

# fix: Could not find a JavaScript runtime
gem 'execjs'

gem 'therubyracer'

# @see https://github.com/aarongough/ruby-tmdb#readme
gem 'ruby-tmdb'

gem 'nokogiri'

# testing related gems
group :development do
  gem 'rspec-rails', '2.12.2'
  gem 'better_errors'
  gem "factory_girl_rails", "~> 4.0"
end

group :test do
  gem 'rspec', '2.12.0'
  gem 'webrat', '0.7.1'
end
# Heroku uses postgres to connect to the database (not sqlite), so add a production group including postgres gem
# @see http://stackoverflow.com/questions/12292046/rails-app-crashing-in-heroku
group :production do
  gem 'pg'
end