x = "Hello World!"
y = 12
dude = "Dude Sup"
z = 12.1234
your_variable = y + z
is_sam_awesome = true
is_nick_awesome = false

# puts x
# puts dude
# puts y
# puts z
# puts your_variable
# puts is_sam_awesome
# puts is_nick_awesome
# puts is_sam_awesome == is_nick_awesome
# puts 1 != 2

if 1 != 2
	puts "Hooray!"
	puts "1 is not equal to 2"
else
	puts "This is not true!"
end

gets
user_input = gets
puts "Enter your name:"
user_input = gets
# puts "Name: " + user_input
puts "Name: #{user_input}"
puts "Some math problem: #{1 + 1 + 1}"
puts 'single quote string #{1 + 1+ 1}'

#( F - 32) / 1.8000

# define celcius
celcius = nil
farenheit = nil
temperature = nil
user_input = nil
farenheit = gets	
puts farenheit.class
puts x.class
puts "Enter Farenheit temperature:"
farenheit = gets.to_f
puts farenheit.class
puts "farenheit #{farenheit}"
celcius = (farenheit - 32) / 1.8
puts "celcius: #{celcius}"

# change user input into a float
# do maths
# temperature is user input - 32 
# Celcius is temperature / 1.8
# print to the user