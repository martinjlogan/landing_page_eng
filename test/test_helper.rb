NV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require File.expand_path(File.dirname(__FILE__) + "/factories.rb")

class ActiveSupport::TestCase
  # Add more helper methods to be used by all tests here...
end
