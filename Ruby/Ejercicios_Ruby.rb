Calcular las notas y su promedio ?

nota1 = gets.chomp.to_f
nota2 = gets.chomp.to_f
nota3 = gets.chomp.to_f
nota4 = gets.chomp.to_f

suma = (nota1 + nota2 + nota3 + nota4) / 4


mes = gets.chomp

dia = gets.chomp.to_i


if (dia >= 21) or (dia <= 18) and (mes == "enero") or (mes == "febrero")
puts "Su signo es Acuario"

elsif (dia >= 19) or (dia <= 20) and (mes == "febrero") or (mes == "marzo")
puts "su signo es Piscis"

elsif (dia >= 21) or (dia <= 20) and (mes == "marzo") or (mes == "abril")
puts "su signo es Aries"

elsif (dia >= 21) or (dia <= 21) and (mes == "abril") or (mes == "mayo")
puts "su signo es Tauro"

elsif (dia >= 22) or (dia <= 21) and (mes == "mayo") or (mes == "junio")
puts "su signo es Geminis"

elsif (dia >= 22) or (dia <= 22) and (mes == "junio") or (mes == "julio")
puts "su signo es Cancer"

elsif (dia >= 23) or (dia <= 23) and (mes == "julio") or (mes == "agosto")
puts "su signo es Leo"

elsif (dia >= 24) or (dia <= 23) and (mes == "agosto") or (mes == "septiembre")
puts "su signo es Virgo"

elsif (dia >= 24) or (dia <= 23) and (mes == "septiembre") or (mes == "octubre")
puts "su signo es libra"

elsif (dia >= 24) or (dia <= 22) and (mes == "octubre") or (mes == "noviembre")
puts "su signo es Escorpion"
  
elsif (dia >= 23) or (dia <= 21) and (mes == "noviembre") or (mes == "diciembre")
puts "su signo es Sagitario"

elsif (dia >= 22) or (dia <= 20) and (mes == "diciembre") or (mes == "enero")
puts "su signo es Capricornio"
