source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'devise'
gem 'haml-rails'
gem 'jquery-rails'
gem 'meta_search'

group :development do
  gem 'ZenTest'
end

group :development, :test do
  gem 'faker'
  gem 'rspec-rails'
  gem 'simplecov'
  gem 'sqlite3'
  gem 'spork', '0.9.0.rc9'
end

group :test do
  gem 'factory_girl_rails'
  gem 'webmock'
  gem 'webrat'
end

group :production do
  gem 'pg'
  gem 'thin'
end
