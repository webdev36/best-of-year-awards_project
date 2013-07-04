source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  gem 'execjs', '1.4.0'
  gem 'therubyracer', :platforms => :ruby
	gem 'sass-rails',   '~> 3.2.3'
  gem 'bootstrap-sass'
  gem 'twitter-bootstrap-rails'
  gem 'uglifier', '>= 1.0.3'
end

gem 'simple_form'

gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'colorbox-rails'
gem 'country_select'
gem 'carmen-rails'
gem 'haml-rails'
gem 'parsley-rails'
gem 'rails3-jquery-autocomplete'

gem 'redcarpet'
gem 'albino'
gem 'nokogiri'


gem "rmagick"
gem "paperclip", "~> 3.0"


gem "will_paginate", ">=3.0.pre2"
gem 'will_paginate_twitter_bootstrap'

gem 'activemerchant'
gem 'authlogic'
gem 'rails3-generators'
gem 'dynamic_form'
gem 'wicked'
gem 'authorize-net'

group :development do
  gem "html2haml"
  gem "quiet_assets"
  gem "better_errors"
  gem "binding_of_caller"
  gem 'webrick'

  gem 'capistrano',                 '2.14.2'    # Cap is only run in dev on local side...
  gem 'rvm-capistrano',             '1.2.7'
  gem 'cap-recipes',                '0.3.39'
  gem 'capistrano-ext',             '1.2.1'
  gem 'unicorn'
end

group :test do
  gem 'sqlite3',                    '1.3.7'
  gem 'simplecov',                  '0.7.1',    :require => false
end

group :development, :test do
  gem "rspec-rails"
  gem "capybara"
  gem "factory_girl_rails"
  gem "cucumber-rails", :require => false
  gem "launchy" 
  gem "capybara"
end
group :production do
  gem 'pg'
end

# MONITORING SERVICES
group :development, :staging, :production do
  gem 'airbrake',                   '3.1.12'
  # gem 'errplane',                   '0.6.6'
end