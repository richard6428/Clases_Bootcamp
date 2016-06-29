=begin
a = "richard brandon rios jaramillo"
puts a.gsub("r", "R")

objects = [1, 2, 3, 4, 5, 6]
objects.each do |num|
	puts num
end

objects.each  { |num| puts num }

a = [ 5, 3, 2, 4, 7, 1, 8 ]
a.delete (3)
a.drop(3)
puts a
=end

=begin
n = [4, 5, 8, 3, 9]
n.each {|x| puts x if x%3==0 }
=end

a = [4, 5, 8, 3, 9]
b= [ 5, 3, 2, 4, 7]

a.map{|c|c + b.each}