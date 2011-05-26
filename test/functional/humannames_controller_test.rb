require 'test_helper'

class HumannamesControllerTest < ActionController::TestCase
  setup do
    @humanname = humannames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:humannames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create humanname" do
    assert_difference('Humanname.count') do
      post :create, :humanname => @humanname.attributes
    end

    assert_redirected_to humanname_path(assigns(:humanname))
  end

  test "should show humanname" do
    get :show, :id => @humanname.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @humanname.to_param
    assert_response :success
  end

  test "should update humanname" do
    put :update, :id => @humanname.to_param, :humanname => @humanname.attributes
    assert_redirected_to humanname_path(assigns(:humanname))
  end

  test "should destroy humanname" do
    assert_difference('Humanname.count', -1) do
      delete :destroy, :id => @humanname.to_param
    end

    assert_redirected_to humannames_path
  end
end
