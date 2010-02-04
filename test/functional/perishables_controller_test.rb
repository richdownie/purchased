require 'test_helper'

class PerishablesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:perishables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create perishable" do
    assert_difference('Perishable.count') do
      post :create, :perishable => { }
    end

    assert_redirected_to perishable_path(assigns(:perishable))
  end

  test "should show perishable" do
    get :show, :id => perishables(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => perishables(:one).to_param
    assert_response :success
  end

  test "should update perishable" do
    put :update, :id => perishables(:one).to_param, :perishable => { }
    assert_redirected_to perishable_path(assigns(:perishable))
  end

  test "should destroy perishable" do
    assert_difference('Perishable.count', -1) do
      delete :destroy, :id => perishables(:one).to_param
    end

    assert_redirected_to perishables_path
  end
end
