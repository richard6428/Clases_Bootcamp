class Empleado
	#Constructor
	def initialize(nombre,ganancia,horas_trabajadas,sueldo)
		if (ganancia > 1000000)
			puts  "La ganancia no puede superar $1.000.000 de pesos"
		else
			@ganancia = ganancia
		end
		@nomebre = nombre
		@ganancia = ganancia
		@horas = horas_trabajadas
		@sueldo = sueldo
	end
	#Metodos getters
	def getGanancia()
		@ganancia
	end
	def getHoras()
		@horas
	end
	def getSueldo()
		@sueldo
	end
	def getNombre()
		@nombre
	end

	#Metodos Setters
	def getGanancia(ganancia)
		@ganancia = ganancia
	end
	def getHoras(horas)
		@horas = horas
	end
	def getSueldo(sueldo)
		@sueldo = sueldo
	end
	def getNombre(nombre)
		@nombre = nombre
	end
end

Arrayemp = 0

puts "Cantidad de Empleados: "
n = gets.chomp.to_i

if((n >= 1) and (n <= 1000))
	for i in 1..n
		puts "Empleado #{i}:"
		puts "Nombre: "
		nombre = gets.chomp
		puts "Ganancia: "
		ganancia = gets.chomp.to_i
		#retry if (ganancia > 1000000)
		puts "Horas Trabajadas: "
		horas_trabajadas = gets.chomp.to_i
		#retry if (horas > 24)
		puts "Sueldo: "
		sueldo = gets.chomp.to_i
		#retry if (sueldo <= 0 || sueldo > 1000000)
		empleado = Empleado.new(nombre, ganancia, horas_trabajadas, sueldo)

		Arrayemp.push(empleado)

	end #Fin De For

	cantidad_despedidos = 0
	#Comparar el empleado con el resto

	for j in 1..Arrayemp.length

		emp1 = Arrayemp[j]

		for k in j+1..Arrayemp.length
			emp2 = Arrayemp[k]
			if (emp1.getGanancia() < emp2.getGanancia() and emp1.getHoras() < emp2.getHoras() and emp1.getSueldo() > emp2.getSueldo())
				puts "El empleado #{emp.getNombre} sera despedido"
				cantidad_despedidos += 1
			end
		end
	end
else
	puts "La cantidad de empleados despedidos: #{cantidad_despedidos}"
end