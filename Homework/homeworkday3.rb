@answer = rand(1..100)
@chances = 0
@gameon = true
@guess = nil

puts "Guess a number between 1-100!"

def check_win
	if @guess == @answer
		puts "GAME OVER!"
		puts "It took you #{@chances} tries!"
		@gameon = false
	end
end

def guess_again
	puts "What is your guess?"
	@guess = gets.to_i
	@chances += 1

	unless @guess == @answer
		message = if @guess > @answer
			puts "too high, try again!".upcase
		else
			puts "too Low, try again!".upcase
		end
	end
end

while @gameon
	guess_again
	check_win
	if @gameon == false
		break
	end
end