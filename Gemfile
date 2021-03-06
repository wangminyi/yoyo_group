source 'https://gems.ruby-china.org/'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.0.1'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'redis-objects', '1.3.1'
gem 'rails_admin', '1.2.0'
gem 'emojimmy', '0.3'
gem 'ransack', '1.8.3'
gem 'vuejs-rails', '2.3.2'
gem 'rest-client', '2.0.2'
gem 'awesome_print', '1.8.0'
gem 'slim-rails', '3.1.2'
gem 'devise', '4.3.0'
gem 'bootstrap-sass', '3.3.7'
gem 'figaro', '1.1.1'
gem 'enumerize', '2.1.2'
gem 'mysql2', '0.4.8'
gem 'webpacker', '3.0.2'
gem 'gon'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'capistrano', '3.8.2'
  gem 'capistrano-bundler', '1.2.0'
  gem 'capistrano-rails', '1.3.0'
  gem 'capistrano3-puma', '3.1.1'
  gem 'capistrano-rails-db', '0.0.2'
  gem 'capistrano-sidekiq', '0.10.0'
  gem 'bullet', '5.6.1'

  gem 'pry',                          '0.9.12.6'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
