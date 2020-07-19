# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2', '>= 5.2.3'

# Use Rubocop as code style checking tool
gem 'rubocop', '~> 0.76.0'

# bootstrap-sass is a Sass-powered version of Bootstrap 3
gem 'bootstrap-sass', '~> 3.4', '>= 3.4.1'

# Use Mysql2 to use mysql database
gem 'mysql2', '~> 0.4.10'

# Use pg to use PostgreSQL database
gem 'pg', '~> 1.2', '>= 1.2.3'

# Use devise to authentication solution
gem 'devise', '~> 4.7', '>= 4.7.1'
gem 'devise-security', '~> 0.14.3'

# Use cancancan to authorization solution
gem 'cancancan', '~> 3.1'

# Use haml, HTML abstraction markup language
gem 'haml', '~> 5.1', '>= 5.1.2'

# writing clean and consistent HAML
gem 'haml_lint', '~> 0.34.0'

# Use haml, as default template engine when scaffold
gem 'haml-rails', '~> 2.0', '>= 2.0.1'

# Use Puma as the app server
gem 'puma', '~> 3.12'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '~> 5'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'activerecord-nulldb-adapter', '~> 0.3.9'

gem 'sidekiq', '~> 6.0', '>= 6.0.6'
gem 'sidekiq-scheduler', '~> 3.0', '>= 3.0.1'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'capybara', '~> 2.18'
  gem 'database_cleaner', '~> 1.7'
  gem 'dotenv-rails', '~> 2.7', '>= 2.7.5'
  gem 'factory_girl_rails', '~> 4.8.0'
  gem 'pry-rails', '~> 0.3.6'
  gem 'rspec-rails', '~> 3.6.1'
  gem 'rspec_api_documentation', '~> 4.9'
  gem 'selenium-webdriver', '~> 3.142', '>= 3.142.6'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '~> 3.0.5'
  gem 'rb-readline', '~> 0.5.5'
  # Spring speeds up development by keeping your application running in the background.
  # Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

