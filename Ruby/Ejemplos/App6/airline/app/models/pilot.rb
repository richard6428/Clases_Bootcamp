class Pilot < ActiveRecord::Base
	has_many :flights

	validates :name, presence: {message: "El campo NAME es obligarotio"}
	validates :lastname, presence: {message: "El campo LASTNAME es obligatorio"}
end
