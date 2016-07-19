class Factura < ActiveRecord::Base
	validates :Nombres, presence: {message: "El campo nombre es obligatorio"}
	validates :Apellido, presence: {message: "El campo apellido es obligatorio"}
	validates :Cedula, presence: {message: "El campo cedula es obligatorio"}
	validates :Producto, presence: {message: "El campo producto es obligatorio"}
	validates :Precio, presence: {message: "El campo precio es obligatorio"}
	validates :Iva, presence: {message: "El campo iva es obligatorio"}
end
