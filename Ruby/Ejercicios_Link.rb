#Maquina de Alimentos

#Variables asociadas a los productos A, B, C
producto_A = 270
producto_B = 340
producto_C = 390

#Variables asociadas a las denominaciones de monedas
moneda_10 = 10
moneda_50 = 50
moneda_100 = 100

#Simular maquina espendedora de productos
while true
	puts "Elija un Producto: "
	producto = gets.chomp
	producto = producto.upcase

	#Elija el valor maximo del producto
	valor_max_moneda = 0
	if(producto == "A")
		valor_max_moneda = producto_A
	elsif(producto == "B")
		valor_max_moneda = producto_B
	elsif(producto == "C")
		valor_max_moneda = producto_C
	end

	acum = 0

	#Ingresar monedas del usuario
	puts "Ingrese monedas: "
	while acum <= valor_max_moneda 
		moneda = gets.chomp.to_i
		acum += moneda
	end
	vuelto = acum - valor_max_moneda

	#variables asociadas a las denominaciones de moneda
	vuelto_10 = 0
	vuelto_50 = 0
	vuelto_100 = 0


	#Calcular  cantidad por denominacion de moneda
    if (moneda_100 <= vuelto)
        vuelto_100 = vuelto / moneda_100
    end
    vuelto = vuelto - (vuelto_100*moneda_100)
    if (moneda_50 <= vuelto)
        vuelto_50 = vuelto / moneda_50
    end
    vuelto = vuelto - (vuelto_50*moneda_50)
    if (moneda_10 <= vuelto)
        vuelto_10 = vuelto / moneda_10
    end
    
	puts "su vuelto: "
	for i in 1..vuelto_100
		puts moneda_100
	end
	for i in 1..vuelto_50
		puts moneda_50
	end
	for i in 1..vuelto_10
		puts moneda_10
	end

	puts "¿Desea continuar: (S/N)?"
	continuar = gets.chomp
	continuar = continuar.upcase

	if(continuar == "N")
		break
	end
end
