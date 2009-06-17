require 'test_helper'

class BullshitsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bullshits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bullshit" do
    assert_difference('Bullshit.count') do
      post :create, :bullshit => { }
    end

    assert_redirected_to bullshit_path(assigns(:bullshit))
  end

  test "should show bullshit" do
    get :show, :id => bullshits(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => bullshits(:one).to_param
    assert_response :success
  end

  test "should update bullshit" do
    put :update, :id => bullshits(:one).to_param, :bullshit => { }
    assert_redirected_to bullshit_path(assigns(:bullshit))
  end

  test "should destroy bullshit" do
    assert_difference('Bullshit.count', -1) do
      delete :destroy, :id => bullshits(:one).to_param
    end

    assert_redirected_to bullshits_path
  end
end
