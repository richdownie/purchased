# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem 'sqlite3-ruby', :lib => 'sqlite3'
  config.gem 'haml'
  config.gem 'authlogic'
  
  # Testing related gems.  Consider moving these elsewhere later.
  config.gem "rspec-rails", :lib => 'spec/rails'
  config.gem "rspec", :lib => 'spec'
  config.gem "factory_girl"
  config.gem "cucumber", :version => ">= 0.6.1"
  config.gem "cucumber-rails", :version => ">= 0.2.3"
  config.gem "capybara"
  config.gem "database_cleaner"
  
  # Add additional load paths for your own custom dirs
  # config.load_paths += %W( #{RAILS_ROOT}/extras )

  config.time_zone = 'Eastern Time (US & Canada)'
end