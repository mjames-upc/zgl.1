require 'test_helper'

class ZoiglKalendarsControllerTest < ActionController::TestCase
  setup do
    @zoigl_kalendar = zoigl_kalendars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zoigl_kalendars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zoigl_kalendar" do
    assert_difference('ZoiglKalendar.count') do
      post :create, zoigl_kalendar: { begin: @zoigl_kalendar.begin, description: @zoigl_kalendar.description, end: @zoigl_kalendar.end, zoigl_stube_id: @zoigl_kalendar.zoigl_stube_id }
    end

    assert_redirected_to zoigl_kalendar_path(assigns(:zoigl_kalendar))
  end

  test "should show zoigl_kalendar" do
    get :show, id: @zoigl_kalendar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zoigl_kalendar
    assert_response :success
  end

  test "should update zoigl_kalendar" do
    patch :update, id: @zoigl_kalendar, zoigl_kalendar: { begin: @zoigl_kalendar.begin, description: @zoigl_kalendar.description, end: @zoigl_kalendar.end, zoigl_stube_id: @zoigl_kalendar.zoigl_stube_id }
    assert_redirected_to zoigl_kalendar_path(assigns(:zoigl_kalendar))
  end

  test "should destroy zoigl_kalendar" do
    assert_difference('ZoiglKalendar.count', -1) do
      delete :destroy, id: @zoigl_kalendar
    end

    assert_redirected_to zoigl_kalendars_path
  end
end
