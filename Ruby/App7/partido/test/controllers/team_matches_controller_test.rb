require 'test_helper'

class TeamMatchesControllerTest < ActionController::TestCase
  setup do
    @team_match = team_matches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_matches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_match" do
    assert_difference('TeamMatch.count') do
      post :create, team_match: { id_match: @team_match.id_match, id_team: @team_match.id_team }
    end

    assert_redirected_to team_match_path(assigns(:team_match))
  end

  test "should show team_match" do
    get :show, id: @team_match
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team_match
    assert_response :success
  end

  test "should update team_match" do
    patch :update, id: @team_match, team_match: { id_match: @team_match.id_match, id_team: @team_match.id_team }
    assert_redirected_to team_match_path(assigns(:team_match))
  end

  test "should destroy team_match" do
    assert_difference('TeamMatch.count', -1) do
      delete :destroy, id: @team_match
    end

    assert_redirected_to team_matches_path
  end
end
