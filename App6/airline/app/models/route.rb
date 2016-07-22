class Route < ActiveRecord::Base
	has_many :flights

	validates :city_o_id, presence: {message: "El campo CITY_O_ID es obligarotio"}
	validates :city_d_id, presence: {message: "El campo CITY_D_ID es obligatorio"}
end
