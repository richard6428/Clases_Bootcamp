#Ejercicio #1 

=begin 

puts "Ingrese un numero"
n = gets.chomp.to_i
suma = 0
for calculo in 1..n
	elevado = (calculo**2)
	suma += elevado
end
puts suma 

=end

#Ejercicio #2

=begin
puts "Ingrese cantidad de numeros"
n = gets.chomp.to_i
contador = 0
mayor = 0
menor = Float::MAX
for cantidad in 1..n
	puts "ingrese Numero #{cantidad}: "
	numero = gets.chomp.to_f
	contador += numero
	if (numero > mayor)
		mayor = numero
	end
	if (numero < menor)
		menor = numero
	end
end

promedio = contador / n
puts "Promedio: #{promedio} - Min: #{menor} - Max: #{mayor}"
=end


#Ejercicio #3
=begin
puts "Ingrese un numeroa multiplicar por 20"
n = gets.chomp.to_i
for multiplicador in 1..20
	resultado = multiplicador * n
	puts "#{n} * #{multiplicador}:  #{resultado}"
end
=end

#Ejercicio #4

=begin
puts "ingrese un numero1 "
n = gets.chomp.to_i
cont =0
cont1=0
for i in 1...n
   if n%i==0
   cont +=i
   puts "divisor #{i}"
   end
end
puts cont
for i in 1...cont
   if cont%i==0
   cont1 +=i
   end
end
  if cont1== n
   puts " son amigos" 
   else 
   puts "no son amigos"
   end
=end

#ejercicio #5

puts "ingrese su estatura en metros"
estatura = gets.chomp.to_f

puts "ingrese su peso en Kg"
peso = gets.chomp.to_f

puts "ingrese su edad"
edad = gets.chomp.to_i

masa = peso / estatura**2

puts masa.to_i




