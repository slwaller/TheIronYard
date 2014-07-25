correct = 0

puts "Only but in the letter A, B, or C!"


question_1 = [
	{
		question: "1. What color is blue?",
		answer: "B",
		answer_choices: [
			"A. Red",
			"B. Blue",
			"C. Yellow",
			]
}
]

puts question_1[0][:question]
question_1[0][:answer_choices].each do |choice|
puts choice
end
gets

if question_1 = [:answer]
	puts "Correct"
	correct += 1
else
	puts "Incorrect"
end

####################

question_2 = [
	{
		question: "2. What is 1+1?",
		answer: "A",
		answer_choices: [
			"A. 2",
			"B. 11",
			"C. 1",
		]
	}
]

puts question_2[0][:question]
question_2[0][:answer_choices].each do |choice|
puts choice
end
gets

if question_2 = [:answer]
	puts "Correct"
	correct += 1
else
	puts "Incorrect"
end

##########################

question_3 = [
	{
		question: "3. Who loves orange soda?",
		answer: "C",
		answer_choices: [
			"A. Abraham Lincoln",
			"B. Kenan",
			"C. Kel",
			]
}
]

puts question_3[0][:question]
question_3[0][:answer_choices].each do |choice|
puts choice
end
gets

if question_3 = [:answer][0]
	puts "Correct"
	correct += 1
else
	puts "Incorrect"
end

############################

question_4 = [
	{
		question: "4. What is Nick's dog's name?",
		answer: "B",
		answer_choices: [
			"A. Voniqua",
			"B. Abby",
			"C. Sharkeisha",
			]
}
]

puts question_4[0][:question]
question_4[0][:answer_choices].each do |choice|
puts choice
end
gets

if question_4 = [:answer][0]
	puts "Correct"
	correct += 1
else
	puts "Incorrect"
end

#############################

question_5 = [
	{
		question: "5. Did you just fart?",
		answer: "C",
		answer_choices: [
			"A. I never fart",
			"B. No",
			"C. Yes",
			]
}
]

puts question_5[0][:question]
question_5[0][:answer_choices].each do |choice|
puts choice
end
gets

if question_5 = [:answer][0]
	puts "Correct"
	correct += 1
else
	puts "Incorrect"
end

#############################

question_6 = [
	{
		question: "6. What color is Nick's Lotus?",
		answer: "B",
		answer_choices: [
			"A. Hot Pink",
			"B. Blue",
			"C. Black",
			]
}
]


puts question_6[0][:question]
question_6[0][:answer_choices].each do |choice|
puts choice
end
gets

if question_6 = [:answer][0]
	puts "Correct"
	correct += 1
else
	puts "Incorrect"
end


#############################

question_7 = [
	{
		question: "7. What is the capital of South Korea?",
		answer: "C",
		answer_choices: [
			"A. Busan",
			"B. Daegu",
			"C. Seoul",
			]
}
]

puts question_7[0][:question]
question_7[0][:answer_choices].each do |choice|
puts choice
end
gets

if question_7 = [:answer]
	puts "Correct"
	correct += 1
else
	puts "Incorrect"
end

##############################

question_8 = [
	{
		question: "8. Who is the president of South Korea?",
		answer: "A",
		answer_choices: [
			"A. Park Geun Hye",
			"B. Yoo Jae Suk",
			"C. Lee Kwang Soo",
			]
}
]

puts question_8[0][:question]
question_8[0][:answer_choices].each do |choice|
puts choice
end
gets

if question_7 = [:answer]
	puts "Correct"
	correct += 1
else
	puts "Incorrect"
end

###############################

question_9 = [
	{
		question: "9. When is it tearin' up my heart?",
		answer: "B",
		answer_choices: [
			"A. When I eat bacon wrapped cheesesticks",
			"B. WHEN IM WITH YOU",
			"C. Mondays",
			]
}
]

puts question_9[0][:question]
question_9[0][:answer_choices].each do |choice|
puts choice
end
gets

if question_9 = [:answer]
	puts "Correct"
	correct += 1
else
	puts "Incorrect"
end

################################

question_10 = [
	{
		question: "10. What is the airspeed velocity of an unladen swallow?",
		answer: "C",
		answer_choices: [
			"A. 15mph",
			"B. 19mph",
			"C. 24mph",
			]
}
]

puts question_10[0][:question]
question_10[0][:answer_choices].each do |choice|
puts choice
end
gets

if question_10 = [:answer]
	puts "Correct"
	correct += 1
else
	puts "Incorrect"
end

puts "You have #{correct} right answers out of 10!"
