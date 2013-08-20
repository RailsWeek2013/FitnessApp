require 'test_helper'

class SupportsControllerTest < ActionController::TestCase
  test "should get user_email" do
    get :user_email
    assert_response :success
  end

end
