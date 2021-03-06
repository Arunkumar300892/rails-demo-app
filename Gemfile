source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.2'
gem 'sprockets-rails'

gem 'pg', '~> 0.18'

gem 'puma', '~> 3.7'

gem 'sass-rails', '~> 5.0'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'font-awesome-sass'
gem 'materialize-sass'
gem 'material_icons'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.5'

# gem 'redis', '~> 3.0'

gem 'bcrypt', '~> 3.1.7'

gem 'devise'

gem "slim-rails"
gem 'simple_form'

gem 'carrierwave'
gem 'cloudinary'
gem "mini_magick"
gem 'flexslider-rails'
gem "loofah", ">= 2.2.3"

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'better_errors'
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem "rails-erd"
  gem "letter_opener" # to test the emails in dev-env
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
