source 'https://rubygems.org'

gem 'rails', '3.2.13'

gem 'mysql2'
gem 'activeadmin'
gem 'meta_search',  '>= 1.1.0.pre'
gem 'simple-navigation'
gem 'russian'
gem 'acts-as-taggable-on'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier',     '>= 1.0.3'
  
  gem 'font-awesome-rails'
  gem 'buthub-rails',   :git => 'git://github.com/eddiefisher/buthub-rails.git'
  gem 'redactor-rails', :git => 'git://github.com/eddiefisher/redactor-rails.git'
end

gem 'jquery-rails'

group :test, :development do
  gem 'rspec-rails', '~> 2.5'
  gem 'email_spec'
end

group :development do
  gem 'rack-mini-profiler'
  gem 'brakeman', :require => false
end

group :test do
  gem 'cucumber-rails'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl'
end
