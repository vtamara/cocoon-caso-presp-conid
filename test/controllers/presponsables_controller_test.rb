require 'test_helper'

class PresponsablesControllerTest < ActionController::TestCase
  setup do
    @presponsable = presponsables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:presponsables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create presponsable" do
    assert_difference('Presponsable.count') do
      post :create, presponsable: { nombre: @presponsable.nombre }
    end

    assert_redirected_to presponsable_path(assigns(:presponsable))
  end

  test "should show presponsable" do
    get :show, id: @presponsable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @presponsable
    assert_response :success
  end

  test "should update presponsable" do
    patch :update, id: @presponsable, presponsable: { nombre: @presponsable.nombre }
    assert_redirected_to presponsable_path(assigns(:presponsable))
  end

  test "should destroy presponsable" do
    assert_difference('Presponsable.count', -1) do
      delete :destroy, id: @presponsable
    end

    assert_redirected_to presponsables_path
  end
end
