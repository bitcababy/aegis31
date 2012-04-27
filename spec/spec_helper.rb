$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

# Load the Rails environment and testing framework
require "#{File.dirname(__FILE__)}/app_root/config/environment"

require 'rubygems'
require 'aegis31'
require 'rspec'

ENV['RAILS_ENV'] = 'in_memory'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}


# Load the Rails environment and testing framework
require "#{File.dirname(__FILE__)}/app_root/config/environment"
require "#{File.dirname(__FILE__)}/../lib/aegis31"

# Run the migrations
ActiveRecord::Migrator.migrate("#{Rails.root}/db/migrate")

# require 'rspec/rails'
# 
# RSpec.configure do |config|
#   config.use_transactional_fixtures = true
#   config.use_instantiated_fixtures  = false
# end

# Undo changes to RAILS_ENV
silence_warnings {RAILS_ENV = ENV['RAILS_ENV']}

# Run the migrations
ActiveRecord::Migrator.migrate("#{Rails.root}/db/migrate")
