require "bundler"
Bundler.setup(:default, :test)
require 'require-me'
require 'set'
require 'rspec'
require 'rspec/autorun'
require 'yaml'
require 'add_game'


RSpec.configure do |config|
  # config.mock_with :mocha
end                      

# rspec spec -f n -c

