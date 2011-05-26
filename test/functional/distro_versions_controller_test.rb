require 'test_helper'

class DistroVersionsControllerTest < ActionController::TestCase
  setup do
    @distro_version = distro_versions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:distro_versions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create distro_version" do
    assert_difference('DistroVersion.count') do
      post :create, :distro_version => @distro_version.attributes
    end

    assert_redirected_to distro_version_path(assigns(:distro_version))
  end

  test "should show distro_version" do
    get :show, :id => @distro_version.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @distro_version.to_param
    assert_response :success
  end

  test "should update distro_version" do
    put :update, :id => @distro_version.to_param, :distro_version => @distro_version.attributes
    assert_redirected_to distro_version_path(assigns(:distro_version))
  end

  test "should destroy distro_version" do
    assert_difference('DistroVersion.count', -1) do
      delete :destroy, :id => @distro_version.to_param
    end

    assert_redirected_to distro_versions_path
  end
end
