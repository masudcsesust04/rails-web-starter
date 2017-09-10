source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.2'

# Use Rubocop as code style checking tool
gem 'rubocop', '~> 0.47.1'

# bootstrap-sass is a Sass-powered version of Bootstrap 3
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'

# Use Mysql2 to use mysql database
gem 'mysql2', '~> 0.4.5'

# Use devise to authentication solution
gem 'devise', '~> 4.2'

# Use haml, HTML abstraction markup language
gem 'haml', '~> 4.0', '>= 4.0.7'

# writing clean and consistent HAML
gem 'haml_lint', '~> 0.23.0'

# Use haml, as default template engine when scaffold
gem 'haml-rails', '~> 0.9.0'

# Use Puma as the app server
gem 'puma', '~> 3.0'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'factory_girl_rails', '~> 4.8.0'
  gem 'rspec-rails', '~> 3.5.2'
  gem 'rspec_api_documentation', '~> 4.9'
  gem 'pry-rails', '~> 0.3.6'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '~> 3.0.5'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background.
  # Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
