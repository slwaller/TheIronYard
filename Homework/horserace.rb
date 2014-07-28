puts "You are able to choose a horse in the stables. You see a perfect steed, what do you name it?"

user_horse = gets.chomp
puts "Oh no! #{user_horse} died right as you named it that! Meet ∞TTº, let's be safe and not name this one! Press Enter to continue!"
user_horse.replace "∞TTº"
gets
puts "Press enter to race!"
####################################################################

# @raceon = true

class Horse
  @@list_of_horses = []

  attr_accessor :name
  attr_accessor :position


  def initialize
    #puts "A new horse has entered!"
    self.name = ""
    self.position = 0
    @@list_of_horses.push self
  end

  def display_track
    @@list_of_horses.each do |race|
      puts "-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|"
      print "~" * race.position
      puts race.name
      p race.position
                          end
  end

  def self.display_horses
      @@list_of_horses
  end

  def move_forward
      self.position += rand(1..5)
  end

  def cheat
    self.position += rand(8..15)
  end

  def slow
    self.position += rand(1..2)
  end

end
###################################################################
class Track

  attr_accessor :length

  def initialize
    self.length = 60
  end
end
####################################################################

track = Track.new
track.length = 60

###########################


horse1 = Horse.new
horse1.name = "∞MMº"
horse1.position = 0

############################

horse2 = Horse.new
horse2.name = "∞XXº"
horse2.position = 0

############################

horse3 = Horse.new
horse3.name = "∞RRº"
horse3.position = 0

#########################
user1 = Horse.new
user1.name = user_horse
user1.position = 0

##########################

# || = OR 
# && - AND

# def check_win
#   if user1.position >= track.length
#     puts "RACE OVER! #{user1.name} Wins!"
#     @raceon = false
#   elsif horse1.position >= track.length
#     puts "RACE OVER! #{horse1.name} Wins!"
#     @raceon = false
#   elsif horse2.position >= track.length
#     puts "RACE OVER! #{horse2.name} Wins!"
#     @raceon = false
#   elsif horse3.position >= track.length
#     puts "RACE OVER! #{horse3.name} Wins!"
#     @raceon = false
#   end
# end

while 
  user1.position < track.length ||
  horse1.position < track.length ||
  horse2.position < track.length ||
  horse3.position < track.length
  
  user1.display_track
  user1.move_forward
  horse1.move_forward
  horse2.move_forward
  horse3.move_forward

  if gets.chomp == "win"
    user1.cheat
    puts "∞TTº got alot faster!"
  end

      # if gets.chomp == "slow"
      #   horse1.slow
      #   horse2.slow
      #   horse3.slow
      #   puts "∞TTº throws mud at the other competitors and slows them down!"
      # end

  if   
   user1.position >= track.length
   puts "#{user1.name} Wins!"
  break
   # @raceon = false
  elsif 
   horse1.position >= track.length
   puts "#{horse1.name} Wins!"
  break
   # @raceon = false
  elsif
   horse2.position >= track.length
   puts "#{horse2.name} Wins!"
  break
   # @raceon = false
  elsif
   horse3.position >= track.length
   puts "#{horse3.name} Wins!"
  break
   # @raceon = false
  end
end


#use move_forward method to move horses across to increase position
#create while loop until horse :position reaches Tracks .length integer





