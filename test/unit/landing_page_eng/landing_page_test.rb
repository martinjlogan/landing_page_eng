require 'test_helper'
include FactoryGirl::Syntax::Methods

class UserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "user model" do
    user = FactoryGirl.build(:user)
    assert_equal(user.name, "Martin")
    assert_equal(user.hobbies[0].name, "Martin")
  end
end
