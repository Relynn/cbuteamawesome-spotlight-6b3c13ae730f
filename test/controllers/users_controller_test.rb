require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "should get classes" do
    get :classes
    assert_response :success
  end
  
  test "should get create_choices" do
    get :create_choices
    assert_response :success
  end
  
  test "should get feedback" do
    get :feedback
    assert_response :success
  end
  
  test "should get forms_feedback" do
    get :forms_feedback
    assert_response :success
  end
  
  test "should get view" do
    get :view
    assert_response :success
  end
  
  test "should get course_search" do
    get :course
    assert_response :success
  end

end
