puts "Welcome to our game of Tic Tac Toe"

# Objective is to get 3X's or 3 0s in a row/column/diagonal

# Present a board
# 0 represents blank
#1 represents X
#2 represents O
board = [
	[0,0,0],
	[0,0,0],
	[0,0,0]
]

board.each do |row|
	game_row = 
	row.each do |square|
		case square
		when 0
			game_row += ' '
		when 1
			game_row += 'X'
		when 2
			game_row += 'O'
		end
	end
	puts game_row
end
		puts row.inspect
	end
end

#Player 1 makes a choice
#save his choice
#Did player 1 win? If so, end the game
# If not, player 2 makes a choice
# Save that choice
# checkwin, if so end game
# Repeat line 5-11


