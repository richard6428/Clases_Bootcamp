class City < ActiveRecord::Base
	has_many :routes

	validates :name, presence: {message: "El campo NAME es obligarotio"}
	validates :country, presence: {message: "El campo COUNTRY es obligatorio"}
end
