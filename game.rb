puts "Hello World"

a = [1,2,3,4, "String", "Dude", 432]
puts a[0]
puts a[2]
puts a[6]

names = ["Nick", "Kevin (The Code Wrangler)", "Calvin", "Sally", "Andrew"]

names.each do |name|
	puts 
end

data = [1, "Sam", 4, 5, 1234]

data.each do |some_variable|

numbers = [5,4,3,2,1]
numbers.each do |number|
	puts "*" * 100
	print numbers[0]
	puts number
end

first_person = {
	name: "Nick Bucciarelli"
	age: 26,
	eye_color: "Brown"
	hair_color: "Brown"
}

another_person = {
	"name" => "Belinda Hare",
	"eye_color" => "Green",
	"hair_color" => "Brown"
}

third_person = {
	:name => "Jamie Kingston",
	:eye_color => "Green",
	:hair_color => "Brown",
	"children" => 2
}

people [
 {name: "Sam Waller", eye_color: "Blue"},
 {name: "Will Fisher", eye_color: "Blue"},

]
puts person[:name]


name_list = people.map do |person|
	person [:name]
end
puts name_list

def display_data display, data
	puts "Persons #{display}: #{data}"
	data

def display_name name
	puts "Persons name: #{name}"
	name
end

def display_eye_color eye_color
	puts "Persons eye_color: #{eye_color}"
	eye_color
end

people.each do |person|
	display_name(person[:name]
end

def do_math
	math = 2+2
	puts "Hey Anna #{math}"
	return math 
end

def display_information person
	display_data("Name", person[:name])
	display_data("Hair Color", person[:hair_color])
	display_data("eye_color", person[:eye_color])
end

#DEFINE METHODS 