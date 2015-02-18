require 'test_helper'

class MyuploadersControllerTest < ActionController::TestCase
  setup do
    @myuploader = myuploaders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myuploaders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myuploader" do
    assert_difference('Myuploader.count') do
      post :create, myuploader: { image: @myuploader.image }
    end

    assert_redirected_to myuploader_path(assigns(:myuploader))
  end

  test "should show myuploader" do
    get :show, id: @myuploader
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myuploader
    assert_response :success
  end

  test "should update myuploader" do
    patch :update, id: @myuploader, myuploader: { image: @myuploader.image }
    assert_redirected_to myuploader_path(assigns(:myuploader))
  end

  test "should destroy myuploader" do
    assert_difference('Myuploader.count', -1) do
      delete :destroy, id: @myuploader
    end

    assert_redirected_to myuploaders_path
  end
end
