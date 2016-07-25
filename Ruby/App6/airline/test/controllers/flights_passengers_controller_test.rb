require 'test_helper'

class FlightsPassengersControllerTest < ActionController::TestCase
  setup do
    @flights_passenger = flights_passengers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flights_passengers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flights_passenger" do
    assert_difference('FlightsPassenger.count') do
      post :create, flights_passenger: { flight_id: @flights_passenger.flight_id, passenger_id: @flights_passenger.passenger_id }
    end

    assert_redirected_to flights_passenger_path(assigns(:flights_passenger))
  end

  test "should show flights_passenger" do
    get :show, id: @flights_passenger
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flights_passenger
    assert_response :success
  end

  test "should update flights_passenger" do
    patch :update, id: @flights_passenger, flights_passenger: { flight_id: @flights_passenger.flight_id, passenger_id: @flights_passenger.passenger_id }
    assert_redirected_to flights_passenger_path(assigns(:flights_passenger))
  end

  test "should destroy flights_passenger" do
    assert_difference('FlightsPassenger.count', -1) do
      delete :destroy, id: @flights_passenger
    end

    assert_redirected_to flights_passengers_path
  end
end
