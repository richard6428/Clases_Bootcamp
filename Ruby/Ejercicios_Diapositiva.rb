#Ejercicio 1

puts "Multiplos de 3 comprendidos entre 1 y 20"


=begin

#Ejercicio 3

puts "Encuesta"

#Variables de conteo

contar_tv_S = 0 #Variable que cuenta los que tienen tv
contar_tv_N = 0 #Variable que cuenta los que no tienen tv
contar_tv_C = 0 #Variable que cuenta los que tienen tv a color
contar_tv_B = 0 #Variable que cuenta los que tienen tv a blanco y negro
contar_tv_comprar_S = 0 #Variable que cuenta los que quieren comprar tv
contar_tv_comprar_N = 0 #Variable que cuenta los que no quieren comprar tv

#Encuestas de Usuario
while true

	#Primera pregunta Encuesta
	puts "¿Tiene Televisor? (S/N)"
	tiene_tv = gets.chomp
	tiene_tv = tiene_tv.upcase
	
	#Segunda pregunta Encuesta
	puts "¿Le gusta a color o blanco y negro? (C/B)"
	es_color = gets.chomp
	es_color =  es_color.upcase

	#Tercera pregunta Encuesta
	puts "¿Compraria un Televisor? (S/N)"
	comprar = gets.chomp
	comprar =  comprar.upcase

	#Algoritmo para realizar el conteo
	
	#Contar los usuarios que tienen tv
	if tiene_tv == "S"
		contar_tv_S = contar_tv_S + 1
	elsif 
		tiene_tv == "N"
		contar_tv_N = contar_tv_N + 1
	else
		#Stand by
	end

	#Contar los usuarios que tienen tv a color y blanco y negro
	if es_color == "C"
		contar_tv_C = contar_tv_C + 1
	elsif es_color == "B"
		contar_tv_B = contar_tv_B + 1
	else
		#stand by
	end

	#Contar los usuarios que quieren o no quieren comprar
	if comprar == "S"
		contar_tv_comprar_S = contar_tv_comprar_S + 1
	elsif comprar == "N"
		contar_tv_comprar_N = contar_tv_comprar_N + 1
	else
		#stand by
	end

	puts "¿Continuar Encuesta? (S/N)"
	continuar = gets.chomp
	continuar = continuar.upcase

	if continuar == "N"
		break
	end
end #Fin del while

#Calculo de porcentaje del usuario que tiene y no tiene TV
porc_tv_S = (contar_tv_S * 100.0) / (contar_tv_S + contar_tv_N)
porc_tv_N = (contar_tv_N * 100.0) / (contar_tv_S + contar_tv_N)

#Calculo de porcentaje del usuario que tiene a color y blanco-negro
porc_tv_C = (contar_tv_C * 100.0) / (contar_tv_C + contar_tv_B)
porc_tv_B =	(contar_tv_B * 100.0) / (contar_tv_C + contar_tv_B)

#Calculo de porcentaje del usuario que comprarian tv y no comprarian

porc_tv_comprar_S = (contar_tv_comprar_S * 100.0) / (contar_tv_comprar_S + contar_tv_comprar_N)
porc_tv_comprar_N = (contar_tv_comprar_N * 100.0) / (contar_tv_comprar_S + contar_tv_comprar_N)

puts "Usuairos que tienen TV: #{contar_tv_S} - Representa: #{porc_tv_S}%"
puts "Usuairos que no tienen TV: #{contar_tv_N} - Representa: #{porc_tv_N}%"

puts "Usuairos que les gusta a color: #{contar_tv_C} - Representa: #{porc_tv_C}%"
puts "Usuairos que no les gusta a color: #{contar_tv_B} - Representa: #{porc_tv_B}%"

puts "Usuairos que comprarian TV: #{contar_tv_comprar_S} - Representa: #{porc_tv_comprar_S}%"
puts "Usuairos que no comprarian TV: #{contar_tv_comprar_N} - Representa: #{porc_tv_comprar_N}%"

=end 