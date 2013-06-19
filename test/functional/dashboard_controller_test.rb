require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show_supply" do
    get :show_supply
    assert_response :success
  end

  test "should get show_demand" do
    get :show_demand
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

end
