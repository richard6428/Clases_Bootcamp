class Passenger < ActiveRecord::Base
	has_many :flight_passengers
	has_many :flights, through: :flight_passengers

	validates :name, presence: {message: "El campo NAME es obligarotio"}
	validates :document, presence: {message: "El campo DOCUMENT es obligatorio"}
	validates :lastname, presence: {message: "El campo LASTNAME es obligarotio"}
end
