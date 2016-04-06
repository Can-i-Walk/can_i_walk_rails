require 'test_helper'

class AuthenticationControllerTest < ActionController::TestCase
  test "should get oauth" do
    get :oauth
    assert_response :success
  end

  test "should get password_reset" do
    get :password_reset
    assert_response :success
  end

  test "should get confirmation" do
    get :confirmation
    assert_response :success
  end

  test "should get authenticate" do
    get :authenticate
    assert_response :success
  end

end
