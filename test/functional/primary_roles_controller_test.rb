require 'test_helper'

class PrimaryRolesControllerTest < ActionController::TestCase
  setup do
    @primary_role = primary_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:primary_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create primary_role" do
    assert_difference('PrimaryRole.count') do
      post :create, :primary_role => @primary_role.attributes
    end

    assert_redirected_to primary_role_path(assigns(:primary_role))
  end

  test "should show primary_role" do
    get :show, :id => @primary_role.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @primary_role.to_param
    assert_response :success
  end

  test "should update primary_role" do
    put :update, :id => @primary_role.to_param, :primary_role => @primary_role.attributes
    assert_redirected_to primary_role_path(assigns(:primary_role))
  end

  test "should destroy primary_role" do
    assert_difference('PrimaryRole.count', -1) do
      delete :destroy, :id => @primary_role.to_param
    end

    assert_redirected_to primary_roles_path
  end
end
