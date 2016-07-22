class Airplane < ActiveRecord::Base
	has_many :flights

	validates :reference, presence: {message: "El campo REFERENCE es obligarotio"}
	validates :count, presence: {message: "El campo COUNT es obligatorio"}
end
