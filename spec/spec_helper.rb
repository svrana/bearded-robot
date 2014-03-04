$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__) + '/../'))

ENV['RACK_ENV'] = 'test'

require 'rspec'
require 'rack/test'

RSpec.configure do |config|
  config.include(Rack::Test::Methods, :type => :route)

  def app
    # Sinatra::Application
  end

  config.before(:all, :speed => :slow) do
    require 'factory_girl'
    FactoryGirl.find_definitions
  end

  config.around(:each, :speed => :slow) do |example|
    # Setup models
    example.run
    # Teardown models
  end

  config.around(:each, :timefreeze => true) do |example|
    Timecop.freeze do
      example.run
    end
  end
end
