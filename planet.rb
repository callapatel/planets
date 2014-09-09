class SolarSystem
  attr_accessor :planets

  def initialize
    @planets = []
  end

  def formation_date
    puts "This solar system is: 46 billion years old "
  end
end
class Planets
  attr_accessor :planets, :name, :weight, :diameter, :rotation

  def initialize(planets)
    @name = planets[:name]
    @weight = planets[:weight]
    @diameter = planets[:diameter]
    @rotation = planets[:rotation]
  end


  def self.local_year(name) #not computing correctly

    if name == "venus" || name == "earth"
      h = (1000.0/365.0).to_f
      puts "venus or earth local rotation is #{h}"
    elsif name == "pluto"
      e = (99000.0/365.0).to_f
      puts "pluto local rotation is #{e}"
    else
      puts f = (88780.0/365.0).to_f
      puts "mars local rotation is #{f}"
    end
  end
end

planets = [
  {:name => "pluto",
  :weight => "15 tons",
  :diameter => "5 inches",
  :rotation => 248 },

  {:name => "mars",
  :weight => "12 tons",
  :diameter => "22 inches",
  :rotation => 2  },

  {:name => "venus",
  :weight => "5 tons",
  :diameter => "12 inches",
  :rotation => 1  },

  {:name => "earth",
  :weight => "44 tons",
  :diameter => "33 inches",
  :rotation => 1 }
          ]

puts SolarSystem.new.formation_date

work = SolarSystem.new
planets.each do |hash|
  work.planets.push(Planets.new(hash))
end

puts work.planets.inspect


puts "Which planet would you like? (pluto, mars, venus, earth) "
a = gets.chomp
puts "What would you like to know about the planet? (weight, diameter, rotation) "
b = gets.chomp.to_sym


  if a == "pluto"
    puts planets[0][b]
  elsif a == "mars"
    puts planets[1][b]
  elsif a == "venus"
    puts planets[2][b]
  else
    puts planets[3][b]
  end

name1 = [ "pluto", "mars", "venus", "earth"]
Planets.local_year(name1[0])
Planets.local_year(name1[1])
Planets.local_year(name1[2])
Planets.local_year(name1[3])
