source 'https://rubygems.org'

ruby '1.9.2' # for Heroku

gem 'rails', '3.2.7'

group :development, :test do
  gem 'sqlite3'
end

group :production do
  gem 'thin'
  gem 'pg'
end

gem "nokogiri", "1.5.5"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'bootstrap-sass', '~> 2.0.4.0'
end

gem 'jquery-rails'

