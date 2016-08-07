class FlightsPassenger < ActiveRecord::Base
	belongs_to :passenger
	belongs_to :flight

	validates :flight_id, presence: {message: "El campo FLIGHT_ID es obligarotio"}
	validates :passenger_id, presence: {message: "El campo PASSENGER_ID es obligatorio"}
end
