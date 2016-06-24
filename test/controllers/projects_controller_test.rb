require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  test "should get ackermann" do
    get :ackermann
    assert_response :success
  end

  test "should get fizzbuzz" do
    get :fizzbuzz
    assert_response :success
  end

  test "should get pythagorus" do
    get :pythagorus
    assert_response :success
  end

end
