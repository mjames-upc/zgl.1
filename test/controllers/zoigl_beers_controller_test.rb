require 'test_helper'

class ZoiglBeersControllerTest < ActionController::TestCase
  setup do
    @zoigl_beer = zoigl_beers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zoigl_beers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zoigl_beer" do
    assert_difference('ZoiglBeer.count') do
      post :create, zoigl_beer: { alcohol: @zoigl_beer.alcohol, beername: @zoigl_beer.beername, description: @zoigl_beer.description, rbbrewer: @zoigl_beer.rbbrewer, rbid: @zoigl_beer.rbid }
    end

    assert_redirected_to zoigl_beer_path(assigns(:zoigl_beer))
  end

  test "should show zoigl_beer" do
    get :show, id: @zoigl_beer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zoigl_beer
    assert_response :success
  end

  test "should update zoigl_beer" do
    patch :update, id: @zoigl_beer, zoigl_beer: { alcohol: @zoigl_beer.alcohol, beername: @zoigl_beer.beername, description: @zoigl_beer.description, rbbrewer: @zoigl_beer.rbbrewer, rbid: @zoigl_beer.rbid }
    assert_redirected_to zoigl_beer_path(assigns(:zoigl_beer))
  end

  test "should destroy zoigl_beer" do
    assert_difference('ZoiglBeer.count', -1) do
      delete :destroy, id: @zoigl_beer
    end

    assert_redirected_to zoigl_beers_path
  end
end
