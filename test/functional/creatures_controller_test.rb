require 'test_helper'

class CreaturesControllerTest < ActionController::TestCase
  setup do
    @creature = creatures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:creatures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create creature" do
    assert_difference('Creature.count') do
      post :create, :creature => @creature.attributes
    end

    assert_redirected_to creature_path(assigns(:creature))
  end

  test "should show creature" do
    get :show, :id => @creature.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @creature.to_param
    assert_response :success
  end

  test "should update creature" do
    put :update, :id => @creature.to_param, :creature => @creature.attributes
    assert_redirected_to creature_path(assigns(:creature))
  end

  test "should destroy creature" do
    assert_difference('Creature.count', -1) do
      delete :destroy, :id => @creature.to_param
    end

    assert_redirected_to creatures_path
  end
end
