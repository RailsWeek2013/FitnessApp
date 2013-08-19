require 'test_helper'

class UserDatasControllerTest < ActionController::TestCase
  test "should get data_view" do
    get :data_view
    assert_response :success
  end

end
