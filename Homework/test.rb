first_question = {
 question: "Is Ruby an OOP language?",
 answer: true
}

puts first_question [:question]
answer = gets.chomp

if answer == first_question [:answer]
  print "correct"
else 
  print "incorrect"
end
correct_answers = 0 

ruby_quiz = [
  {
    question: "How many Championship\'s has Nebraska won in College Football?",
    answer: "5",
    answer_choices: [
      "1",
      "5",
      "6",
      "8",
    ]
  },
  {
    question: "How many Heisman Winner\'s does Nebraska have?",
    answer:"3",
    answer_choices: [
      "1",
      "2",
      "3",
      "4",
    ]
  },
  {
    question: "How is the current Nebraska Football coach?",
    answer: "Bo Pelini",
    answer_choices: [
      "Bo Pelini",
      "Tom Osborne",
      "Steve Spurrier",
      "Nick Saban",
  ]
},
{
  question: "What city is Memorial Stadium located?",
  answer: "Lincoln",
  answer_choices: [
    "Omaha",
    "Grand Island",
    "York",
    "Lincoln",
  ]
},
{
  question: "What team does Nebraska open their season with?",
  answer: "Florida Atlantic",
  answer_choices: [
    "South Carolina",
    "Alabama",
    "Oregon",
    "Florida Atlantic",
  ]
},
{
  question: "What year did Nebraska join the Big Ten Conference?",
  answer: "2011",
  answer_choices: [
    "2001",
    "2011",
    "2005",
    "2009",
  ]
},
{
  question: "How many All American\'s does Nebraska have?",
  answer: "54",
  answer_choices: [
    "54",
    "100",
    "56",
    "23",
  ]
},
{
  question: "What year was Memorial Stadium Built?",
  answer: "1923",
  answer_choices: [
    "1923",
    "1945",
    "1950",
    "1911",
  ]
},
{
  question: "What year did Nebraska win their first National Championship?",
  answer: "1970",
  answer_choices: [
    "1971",
    "1998",
    "1997",
    "1970",
  ]
},
]

ruby_quiz.each do | question |
  
  puts question [:question]
  puts question [:answer_choices]
  answer = gets.chomp

if answer == question [:answer]
  print "correct"
correct_answers +=1
else 
  print "incorrect"


  end
end

puts "You have #{correct_answers}"