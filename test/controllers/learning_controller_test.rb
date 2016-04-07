require 'test_helper'

class LearningControllerTest < ActionController::TestCase
  test "should get academia" do
    get :academia
    assert_response :success
  end

  test "should get computing" do
    get :computing
    assert_response :success
  end

  test "should get other" do
    get :other
    assert_response :success
  end

end
