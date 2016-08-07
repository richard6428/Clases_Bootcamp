class ContactMailer < ApplicationMailer
	def new_message(Nombre, Apellido, Email, Fecha, Sexo, Lenguaje, Experiencia)
		@name=name
		@lastname=lastname
		@email=email
		@date=date
		@sex=sex
		@language=language
		@experience=experience
		mail to: "richar6428@hotmail.com", subject: "Formulario"
	end
end
