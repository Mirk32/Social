source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end
ruby '2.4.1'
gem 'carrierwave'
gem 'ckeditor'
gem 'coffee-rails', '~> 4.2'
gem 'devise'
gem 'dotenv-rails'
gem 'draper'
gem 'font-awesome-sass', '~> 4.7.0'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'jquery-ui-rails', '~> 5.0'
gem 'kaminari'
gem 'mini_magick'
gem 'pg'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.4'
gem 'sass-rails', '~> 5.0'
gem 'sidekiq'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

gem "fog-google"
gem "google-api-client", "> 0.8.5", "< 0.9"
gem "mime-types"

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'pry'
  gem 'pry-byebug'
  gem 'rubocop'
  gem 'selenium-webdriver'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
