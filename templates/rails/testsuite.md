# Building the Test Suite

## Gems for the project
```
group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails'
  gem 'shoulda-matchers', require: false
end

group :development do
  gem 'guard'
  gem 'guard-bundler', require: false
  gem 'guard-ctags-bundler'
  gem 'guard-haml'
  gem 'guard-rspec', require: false
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end
```

## Terminal Commands
- bundle install
- rails generate rspec:install
- guard init

## Config Files

###### spec_helper.rb file
- remove the begin and end statement for block comments.
```

  :66 # config.disable_monkey_patching!
  :81 # config.profile_examples = 10
  :87 # config.order = :random
  :88 config.order = :defined
```

###### rails_helper.rb file
add to file
```
require 'capybara/rspec'
require 'database_cleaner'
```

change 

```
:42 config.use_transactional_fixtures = true
```

to

```
:42 config.use_transactional_fixtures = false
```

```
# This block takes a snapshot of the page you are testing.
# See capybara docs for more on this.
# The snapshots are saved by default in tmp/capybara
config.after do |example|
  if example.metadata[:type] == :feature
    #save and open page
    save_and_open_screenshot
end

#This block must be here, do not combine with the other `before(:each)` block
# This makes it so Capybara can see the database.
# config.before(:each) do
#   DatabaseCleaner.start
# end
#
# This block makes sure that tests start on a clean slate
config.before(:suite) do 
  DatabaseCleaner.clean_with(:truncation)
end

# This block configures Capybara's driver to use Selenium
# It makes it use the chrome browser, but can also be configured to user
# Firefox.etc.
Capybara.register_driver :selemium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

# Uncomment to use capybara-webkit driver for headless testing
# Capybara.javascript_driver = :webkit
#
# Capybara.run_server = false
# Capybara.app_host = 'https://my-website.mysite.com'
#
Capybara.configure do |config|
  config.default_max_wait_time = 10 #seconds
  config.default_driver = :selenium
  # config.always_include_port = true
end
````
Under the Rspec configuation area of rails_helper file
```
config.include FactoryBot::Syntax::Methods
```

##### Factory Bot Config
 - add to config/application.rb
 ````
config.generators do |g|
  g.factory_bot suffix: 'factory'
end
