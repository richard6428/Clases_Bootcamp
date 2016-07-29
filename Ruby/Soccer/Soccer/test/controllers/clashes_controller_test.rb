require 'test_helper'

class ClashesControllerTest < ActionController::TestCase
  setup do
    @clash = clashes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clashes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clash" do
    assert_difference('Clash.count') do
      post :create, clash: { match_id: @clash.match_id, team_id: @clash.team_id }
    end

    assert_redirected_to clash_path(assigns(:clash))
  end

  test "should show clash" do
    get :show, id: @clash
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clash
    assert_response :success
  end

  test "should update clash" do
    patch :update, id: @clash, clash: { match_id: @clash.match_id, team_id: @clash.team_id }
    assert_redirected_to clash_path(assigns(:clash))
  end

  test "should destroy clash" do
    assert_difference('Clash.count', -1) do
      delete :destroy, id: @clash
    end

    assert_redirected_to clashes_path
  end
end
