require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get add" do
    get :add
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

end
