source 'http://rubygems.org'

gem 'rails', '3.1.3'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'active_link_to'
gem 'acts-as-taggable-on'
gem 'aws-s3'
gem 'cancan'
gem 'devise'
gem 'geocoder'
gem 'haml-rails'
gem 'jquery-rails'
gem 'meta_search'
gem "paperclip", "~> 2.4"
gem 'rails_admin', :git => 'git://github.com/sferik/rails_admin.git'
gem 'rails3-jquery-autocomplete'
gem 'will_paginate'

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
