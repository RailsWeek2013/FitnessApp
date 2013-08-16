require 'test_helper'

class WorkoutplansControllerTest < ActionController::TestCase
  test "should get excerciseconfiguration" do
    get :excerciseconfiguration
    assert_response :success
  end

end
