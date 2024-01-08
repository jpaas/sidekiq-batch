require 'sidekiq/testing'
Sidekiq::Testing.fake!

require "simplecov"
SimpleCov.start

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'sidekiq/batch'

RSpec.configure do |config|
  config.filter_run focus: true
  config.run_all_when_everything_filtered = true
end

Dir[File.dirname(__FILE__) + "/support/**/*.rb"].each {|f| require f }
