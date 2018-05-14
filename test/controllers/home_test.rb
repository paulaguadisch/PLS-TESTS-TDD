require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  
  test "should get index" do
    get root_url
    assert_response :success
  end
  
  test "should get registration page" do
    get new_user_registration_url
    assert_response :success
  end

  test "should get session login page" do
    get new_user_session_url
    assert_response :success
  end


end