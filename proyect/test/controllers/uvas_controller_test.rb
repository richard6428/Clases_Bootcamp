require 'test_helper'

class UvasControllerTest < ActionController::TestCase
  setup do
    @uva = uvas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uvas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uva" do
    assert_difference('Uva.count') do
      post :create, uva: { address: @uva.address, commune: @uva.commune, email: @uva.email, manager: @uva.manager, nameUva: @uva.nameUva, phone: @uva.phone }
    end

    assert_redirected_to uva_path(assigns(:uva))
  end

  test "should show uva" do
    get :show, id: @uva
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uva
    assert_response :success
  end

  test "should update uva" do
    patch :update, id: @uva, uva: { address: @uva.address, commune: @uva.commune, email: @uva.email, manager: @uva.manager, nameUva: @uva.nameUva, phone: @uva.phone }
    assert_redirected_to uva_path(assigns(:uva))
  end

  test "should destroy uva" do
    assert_difference('Uva.count', -1) do
      delete :destroy, id: @uva
    end

    assert_redirected_to uvas_path
  end
end
