require 'test_helper'

class AboutControllerTest < ActionController::TestCase
  test "should get about_me" do
    get :about_me
    assert_response :success
  end

end
