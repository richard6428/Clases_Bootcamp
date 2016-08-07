json.array!(@flights_passengers) do |flights_passenger|
  json.extract! flights_passenger, :id, :flight_id, :passenger_id
  json.url flights_passenger_url(flights_passenger, format: :json)
end
