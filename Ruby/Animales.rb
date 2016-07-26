class Animal

	attr_reader :word, :num_limbs, :name

	def initialize(word, name, num_limbs)
		@word = word
		@name = nombre
		@num_limbs = num_limbs
	end

	def say_hi
		@word*2
	end

end

class Dog < Animal
	@@num_limbs = 4

	def initialize(word, name)
		@word = word
		@name = name
	end

	def description
		"Hi I'm #{name}, I have #{@@num_limbs} limbs and I'm a Dog"
	end
end

class Dove < Animal
	@@num_limbs = 2

	def initialize(word, name)
		@word = word
		@name = name
	end

	def description
		"Hi I'm #{name}, I have #{@@num_limbs} limbs and I'm a Dove"
	end
end

class Cat < Animal
	@@num_limbs = 4

	def initialize(word, name)
		@word = word
		@name = name
	end

	def description
		"Hi I'm #{name}, I have #{@@num_limbs} limbs and I'm a Cat"
	end
end

perrito = Dog.new("guau","pepe")
puts perrito.description

gatico = Cat.new("miau","lulu")
puts gatico.description

pajaro = Dove.new("ruu","rosa")
puts pajaro.description