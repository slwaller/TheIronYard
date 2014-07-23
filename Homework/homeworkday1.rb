#STRINGS

#1
a = "Dudesup"

puts a.delete "D"

#2
b = "LOUD NOISES"

puts b.downcase.replace "shhhhh"

#3
c = "sir im iris"

puts c.reverse

#4
d = "I dont think this is zero"

puts d.empty?

#5
e = "defribulator"

puts e.clear

#FIXNUM INTEGERS MY KRYPTONITE

#1
x = 493
y = 4
puts x**y

#2
bonnie = 943
clyde = 32

puts bonnie*clyde

#3
Nick = 22
burritos = 3

puts Nick%burritos
# 3 goes into 22 7 times (21) with 1 left over

#4
puts 1312.next

#5

o = 98
g = 3

puts o/g
#________________________________________
f = "putting space here because reasons"

puts f.clear
#________________________________________

#FLOAT

#1
puts 1010.fdiv(304.2)
#study this later

#2
puts 34.4.round

#3
puts 2.0**3

#4
puts (-92.22).abs

#5
puts 2.5.to_r

#BOOLEAN

#1
are_cats_awesome = true
are_dogs_awesome = false

puts are_cats_awesome
puts are_dogs_awesome
puts are_cats_awesome == are_dogs_awesome
puts 1 != 0

if 
	puts "YES! I agree!"
	puts "1 is not equal to 2"
else
	puts "No way, Jose!"
end

#2
z = 10
x = 12
z > x

if z > x
	puts "THAT IS INCORRECT"
	puts "10 is greater than 12"

else
	puts "CORRECTAMUNDO!"
	
end

#3

t = 9
v = 3*3
t == v

if t == v
	puts "You got dat right"
	puts "The sum of 3*3 equals to 9"
end

#4

h = 15
g = 15.123
15 != 15.123

if h = g
	puts "Yea thats true"
	puts "15 is not equal to 15.123"
end

#5

k = 12039
m = 12093
k < m

if k < m
	puts "CHACHING"
	puts "12093 is greater than 12039!"
end



#EXTRY CREDIT LB TO KILO CONVERSION
pound = nil
kilogram = nil
user_input = nil
pound = gets
puts pound.class
puts x.class
puts "Enter Pounds"
pound = gets.to_f
puts pound.class
puts "pound #{pound}"
kilograms = pound / 2.2
puts "kilograms: #{kilograms}"

















