sudo su
[sudo] password for richard: 
root@richard-VirtualBox:/home/richard# irb
irb(main):001:0> if (2**6 > 100)
irb(main):002:1> print "Es mayor"
irb(main):003:1> end
=> nil
irb(main):004:0> if (2**8 > 100)
irb(main):005:1> print "Es mayor"
irb(main):006:1> end
Es mayor=> nil
irb(main):007:0> if (2**6 > 100)
irb(main):008:1> print "Es mayor"
irb(main):009:1> else
irb(main):010:1* print "Es menor"
irb(main):011:1> end
Es menor=> nil
irb(main):012:0> if (2**8 > 100)
irb(main):013:1> print "Es mayor"
irb(main):014:1> end
Es mayor=> nil
irb(main):015:0> if (2**8 > 1000)
irb(main):016:1> print "Es mayor"
irb(main):017:1> elsif (2**8 < 1000)
irb(main):018:1> print "Intermedio"
irb(main):019:1> else
irb(main):020:1* print "Es menor"
irb(main):021:1> end
Intermedio=> nil
irb(main):022:0> unless (2**8 > 1000)
irb(main):023:1> print "Es mayor"
irb(main):024:1> end
Es mayor=> nil
irb(main):025:0> edad = 20
=> 20
irb(main):026:0> case
irb(main):027:1* when edad > 20 then
irb(main):028:1* print "Edad > 20"
irb(main):029:1> when edad < 20 then
irb(main):030:1* print "Edad < 20"
irb(main):031:1> when edad == 20 then
irb(main):032:1* print "Edad = 20"
irb(main):033:1> end
Edad = 20=> nil
irb(main):034:0> gets.chomp
Nota1 = 5
=> "Nota1 = 5"
irb(main):035:0> gets.chomp
Nota2 = 5
=> "Nota2 = 5"
irb(main):036:0> gets.chomp
Nota3 = 5
=> "Nota3 = 5"
irb(main):037:0> print "Nota1"
Nota1=> nil
irb(main):038:0> nota1 = gets.chomp
5
=> "5"
irb(main):039:0> nota2 = gets.chomp
5
=> "5"
irb(main):040:0> nota3 = gets.chomp
5
=> "5"
irb(main):041:0> suma = nota1 + nota2 + nota3
=> "555"
irb(main):042:0> suma.to_f
=> 555.0
irb(main):043:0> suma.to_i
=> 555
irb(main):044:0> suma / 3
NoMethodError: undefined method `/' for "555":String
	from (irb):44
	from /usr/bin/irb:11:in `<main>'
irb(main):045:0> suma / 3.to_i
NoMethodError: undefined method `/' for "555":String
	from (irb):45
	from /usr/bin/irb:11:in `<main>'
irb(main):046:0> suma.to_i
=> 555
irb(main):047:0> suma / 3
NoMethodError: undefined method `/' for "555":String
	from (irb):47
	from /usr/bin/irb:11:in `<main>'
irb(main):048:0> suma = (nota1 + nota2 + nota3)/3.to_i
NoMethodError: undefined method `/' for "555":String
	from (irb):48
	from /usr/bin/irb:11:in `<main>'
irb(main):049:0> suma = (nota1 + nota2 + nota3)
=> "555"
irb(main):050:0> suma = (nota1 + nota2 + nota3).to_i
=> 555
irb(main):051:0> suma = (nota1 + nota2 + nota3).to_f
=> 555.0
irb(main):052:0> nota1.to_i
=> 5
irb(main):053:0> nota2.to_i
=> 5
irb(main):054:0> nota3.to_i
=> 5
irb(main):055:0> suma = (nota1 + nota2 + nota3)
=> "555"
irb(main):056:0> suma = nota1 + nota2 + nota3
=> "555"
irb(main):057:0> nota1 = gets.chomp.to_i
5
=> 5
irb(main):058:0> nota2 = gets.chomp.to_i
5
=> 5
irb(main):059:0> nota3 = gets.chomp.to_i
5
=> 5
irb(main):060:0> suma = nota1 + nota2 + nota3
=> 15
irb(main):061:0> suma / 3
=> 5
irb(main):062:0> if ()
