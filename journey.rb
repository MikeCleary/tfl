require 'pry'
class Journey
  attr_accessor :tube
  attr_accessor :line_start
  attr_accessor :line_destination
  attr_accessor :station
  attr_accessor :start
  attr_accessor :destination
  attr_accessor :stops

  def initialize
    @tube = Tube.new
  end

  def get_line
    puts "enter line"
    input = gets.chomp
    if input.downcase == "victoria"
      line = tube.victoria
    elsif input.downcase == "bakerloo"
      line = tube.bakerloo
    elsif input.downcase == "central"
      line = tube.central
    else
      puts "line not found"
      get_line
    end
  end

  def get_station(line)
    station_number = 0
    line.each do |station|
      puts "#{station_number}: #{station}"
      station_number += 1
    end
    puts "Enter the number of your station"
    @station = line[gets.chomp.to_i]
  end

  def calculate_leg(start, destination, line)
    if line.index(start) < line.index(destination)
      stops = line.index(destination) - line.index(start)
    else
      stops = line.index(start)  - line.index(destination)
    end
  end

  def get_journey
    puts "Start:"
    line_start = get_line
    start = get_station(line_start)
    puts "Destination:"
    line_destination = get_line
    destination = get_station(line_destination)

    if line_start == line_destination 
      stops = calculate_leg(start, destination, line_start)
    else
      stops = (calculate_leg(start, "Oxford Circus", line_start)) + (calculate_leg("Oxford Circus", destination, line_destination))
    end
    puts "Your journey will take #{stops} stops."
  end

end

class Tube
  #attr_accessor :tube
  attr_accessor :victoria
  attr_accessor :bakerloo
  attr_accessor :central

  def initialize
    @victoria = ["Kings Cross", "Euston", "Warren Street", "Oxford Circus", "Green Park", "Victoria", "Pimlico"]
    @bakerloo = ["Elephant & Castle", "Lambeth North", "Waterloo", "Embankment", "Charing Cross", "Picadilly Circus", "Oxford Circus", "Regent's Park", "Baker Street"]
    @central = ["Notting Hill Gate", "Queensway", "Lancaster Gate", "Marble Arch", "Bond Street", "Oxford Circus", "Tottenham Court Road", "Holborn", "Chancery Lane"]
  end
end

j = Journey.new
j.get_journey
