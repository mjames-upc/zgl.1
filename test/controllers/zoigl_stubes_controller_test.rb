require 'test_helper'

class ZoiglStubesControllerTest < ActionController::TestCase
  setup do
    @zoigl_stube = zoigl_stubes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zoigl_stubes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zoigl_stube" do
    assert_difference('ZoiglStube.count') do
      post :create, zoigl_stube: { address: @zoigl_stube.address, city: @zoigl_stube.city, description: @zoigl_stube.description, founded: @zoigl_stube.founded, hours: @zoigl_stube.hours, lat: @zoigl_stube.lat, lon: @zoigl_stube.lon, phone: @zoigl_stube.phone, rbid: @zoigl_stube.rbid, score: @zoigl_stube.score, stube_name: @zoigl_stube.stube_name, web: @zoigl_stube.web }
    end

    assert_redirected_to zoigl_stube_path(assigns(:zoigl_stube))
  end

  test "should show zoigl_stube" do
    get :show, id: @zoigl_stube
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zoigl_stube
    assert_response :success
  end

  test "should update zoigl_stube" do
    patch :update, id: @zoigl_stube, zoigl_stube: { address: @zoigl_stube.address, city: @zoigl_stube.city, description: @zoigl_stube.description, founded: @zoigl_stube.founded, hours: @zoigl_stube.hours, lat: @zoigl_stube.lat, lon: @zoigl_stube.lon, phone: @zoigl_stube.phone, rbid: @zoigl_stube.rbid, score: @zoigl_stube.score, stube_name: @zoigl_stube.stube_name, web: @zoigl_stube.web }
    assert_redirected_to zoigl_stube_path(assigns(:zoigl_stube))
  end

  test "should destroy zoigl_stube" do
    assert_difference('ZoiglStube.count', -1) do
      delete :destroy, id: @zoigl_stube
    end

    assert_redirected_to zoigl_stubes_path
  end
end
