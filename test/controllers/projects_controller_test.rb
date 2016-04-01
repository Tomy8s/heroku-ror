require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get fourletters" do
    get :fourletters
    assert_response :success
  end

  test "should get calendar" do
    get :calendar
    assert_response :success
  end

  test "should get gameoflife" do
    get :gameoflife
    assert_response :success
  end

  test "should get maths" do
    get :maths
    assert_response :success
  end

end
