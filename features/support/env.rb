# require 'bundler'
# begin
#   Bundler.setup(:default, :development)
# rescue Bundler::BundlerError => e
#   $stderr.puts e.message
#   $stderr.puts "Run `bundle install` to install missing gems"
#   exit e.status_code
# end

# $LOAD_PATH.unshift(File.dirname(__FILE__) + '/../../lib')
# require 'aegis31'
# 
# require 'rspec/expectations'
# require 'cucumber/rails'
# require 'pickle/world'
# require 'capybara/cucumber'
# require 'capybara/rspec'
# Capybara.default_selector = :css

# Remove/comment out the lines below if your app doesn't have a database.
# For some databases (like MongoDB and CouchDB) you may need to use :truncation instead.
# begin
#   DatabaseCleaner.strategy = :transaction
# rescue NameError
#   raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
# end
