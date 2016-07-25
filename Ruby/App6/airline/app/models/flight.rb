class Flight < ActiveRecord::Base
	belongs_to :route
	belongs_to :pilot
	has_one :airplane

	has_many :flight_passengers
	has_many :passengers, through: :flight_passengers

	validates :route_id, presence: {message: "El campo ROUTE_ID es obligarotio"}
	validates :airplane, presence: {message: "El campo AIRPLANE_ID es obligatorio"}
	validates :pilot_id, presence: {message: "El campo PILOT_ID es obligarotio"}
	validates :date, presence: {message: "El campo DATE es obligatorio"}
	validates :price, presence: {message: "El campo PRICE es obligatorio"}
end
