require 'test_helper'

class PowersControllerTest < ActionController::TestCase
  setup do
    @power = powers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:powers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create power" do
    assert_difference('Power.count') do
      post :create, :power => @power.attributes
    end

    assert_redirected_to power_path(assigns(:power))
  end

  test "should show power" do
    get :show, :id => @power.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @power.to_param
    assert_response :success
  end

  test "should update power" do
    put :update, :id => @power.to_param, :power => @power.attributes
    assert_redirected_to power_path(assigns(:power))
  end

  test "should destroy power" do
    assert_difference('Power.count', -1) do
      delete :destroy, :id => @power.to_param
    end

    assert_redirected_to powers_path
  end
end
