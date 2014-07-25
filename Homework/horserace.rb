puts "Enter your Horse's Name"
user_horse = gets.chomp

class Horse
  @@list_of_horses = []

  attr_accessor :name
  attr_accessor :speed
  attr_accessor :position


  def initialize
    #puts "A new horse has entered!"
    self.name = ""
    self.speed = 0
    self.position = 0
    @@list_of_horses.push self
  end

    def display_data
      p self.name
      "#{self.name} #{self.speed}"
    end

    def self.display_horses
      @@list_of_horses
    end

    def move_forward
      self.position += 1
    end
end

horse1 = Horse.new
horse1.name = "Seabiskit"
horse1.speed = rand(1..5)
horse1.position = 0

p horse1.name

horse2 = Horse.new
horse2.name = "Cauliflower Crone"
horse2.speed = rand(1..5)
horse2.position = 0

p horse2.name

horse3 = Horse.new
horse3.name = "McSnail"
horse3.speed = rand(1..5)
horse3.position = 0

p horse3.name

horse4 = Horse.new
horse4.name = user_horse
horse4.speed = rand(1..5)
horse4.position = 0

p horse4.name

#p Horse.display_horses
