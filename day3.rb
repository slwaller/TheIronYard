character_1 = {
	name: "Snips",
	body_structure: "Short long lanky",
	clothing: [
		"Fur Armor",
		"Cow Costume",
		":]"
	]
	health: 1000,
	damage: 20
}

character_2 = {
	name: "Mario",
	body_structure: "Short",
	clothing: [
		"Overalls",
		"Moustache",
		"Shoes"
	],
	health: 100,
	damage: 2
}

character_3 = {
	name: "Bob",
	body_structure: "Huge. Muscles everywhere",
	clothing: [
		"Canadian Tuxedo",
		"Denim for lyfe, yo",
		": |"
	],
	health: 1,
	damage: 2
}

char_array = [character_1, chracter_2, character_3]
combat_1 = shuffled_array.shuffle[0]
combat_2 = char_array[1]

puts combat_1[:name],combat_1[:name]
puts combat_2[:name],combat_2[:name]

while (combat_1[:health] > 0) && (combat_2[:health] > 0)
	puts combat_1[:name], combat_1[:health]
	puts combat_2[:name], combat_2[:health]
	combat_1[:health] -= combat_2[:damage]
	combat_2[:health] -= combat_1[:damage]
	# when health is <= 0, display "person wins"
end

def check_win char1, char2
	if char1[:health] > 0
		puts name[:name] + "wins!"
	else
		puts char2[:name] + "wins!"
	end
end

# parenthesis not needed, but good for 