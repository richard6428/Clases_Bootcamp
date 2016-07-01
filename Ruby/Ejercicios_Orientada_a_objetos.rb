=begin

# Definicion de clase
class GoodDog
	@@count = 0
	def initialize(nombre,edad)
		@name = nombre.capitalize
		@age = edad
		@@count += 1
	end
	def getName()
		@name
	end
	def getAge()
		@age
	end
	def getCount()
		@@count
	end
	def setName(nombre)
		@name = nombre
	end
	def setAge (edad)
		@age = edad
	end
end

sparky = GoodDog.new("Sparky",4)
fido = GoodDog.new("Fido",6)
spot = GoodDog.new("Spot",10)

fido.setName("Lucas")
fido.setAge(1)
puts fido.getName()
puts fido.getAge()
puts fido.getCount()

=end

=begin

#!/usr/bin/ruby -w

# define a class
class Box
  # constructor method
  def initialize(w,h)
     @width, @height = w, h
  end

  # instance method by default it is public
  def getArea
     getWidth() * getHeight
  end

  # define private accessor methods
  def getWidth
     @width
  end
  def getHeight
     @height
  end
  # make them private
  private :getWidth, :getHeight

  # instance method to print area
  def printArea
     @area = getWidth() * getHeight
     puts "Big box area is : #@area"
  end
  # make it protected
  protected :printArea
end

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.getArea()
puts "Area of the box is : #{a}"

# try to call protected or methods
#box.printArea()

=end

=begin

#!/usr/bin/ruby -w

# define a class
class Box
  BOX_COMPANY = "TATA Inc"
  # constructor method
  def initialize(w,h)
     @width, @height = w, h
  end
  # instance method
  def getArea
     @width * @height
  end
end

# define a subclass
class BigBox < Box
  # add a new instance method
  def printArea
  	super
     @area = @width * @height
     puts "Big box area is : #@area"
  end
  def printArea
     @area = @width * @height * 2
     puts "Big box area is : #@area"
  end
end

# create an object
box = BigBox.new(10, 20)

# print the area
box.printArea()
#box.printArea2()

#puts box.getArea()

=end

class Cuenta
	def initialize(nombre,cedula, num_cuenta,saldo)
		@name = nombre
		@id = cedula
		@account_num = num_cuenta
		@amount = saldo
	end

	def ingreso(saldo)
		@amount += saldo
	end

	def reintegro(saldo)
		@amount -= saldo
	end

	def getAmount()
		@amount
	end

	def transferencia(cuenta2,saldo2)
		#transfiero de cuenta 2 el saldo 2
		@Amaount = self.getAmount + saldo2
		#restar el saldo que transferi de cuenta 2
		cuenta2.reintegro(saldo2)
	end
end

cuenta = Cuenta.new("Richard Rios","123456789","10052637485920374646",50000.0)
cuenta2 = Cuenta.new("Andres Salazar","9876543210","165468768720374646",100000.0)
cuenta.transferencia(cuenta2,30000.0)
puts cuenta.getAmount
puts  cuenta2.getAmount