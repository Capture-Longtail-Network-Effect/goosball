source 'http://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'

# Use Mysql as default database
gem 'mysql2'
gem 'pg'

# Use sprockets, even if we don't really need them
gem 'sprockets', '~> 3.0'
gem 'sprockets-rails', :require => 'sprockets/railtie'

# We need sass to do a neat thing
gem 'sass', '~> 3.4', '>= 3.4.19'

# Use our lovely bourboun
gem 'bourbon', '~> 4.2', '>= 4.2.6'

# Tidy up our own bourbon
gem 'neat', '~> 1.7', '>= 1.7.2'

# We scaffold common stylesheet and html elements
gem 'bitters', '~> 1.1'

# It is predefined asset, so monkey-patch it into our project
gem 'refills', group: :development

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views. We don't even need it
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '~> 4.0', '>= 4.0.5'

# Use jquery UI
gem 'jquery-ui-rails', '~> 5.0', '>= 5.0.5'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'twitter-bootstrap-rails'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'web-console'
  gem 'spring'
  gem 'rspec-rails', '~> 3.0'
  gem 'capybara-webkit'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'shoulda-matchers', '~> 3.0', '>= 3.0.1'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
end
