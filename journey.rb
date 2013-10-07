require 'pry'
class Journey
  attr_accessor :tube
  attr_accessor :line
  attr_accessor :station
  attr_accessor :start
  attr_accessor :finish
  attr_accessor :stops

  def initialize
    @tube = Tube.new
  end

  def get_line
    puts "enter line"
    input = gets.chomp
    if input.downcase == "victoria"
      @line = tube.victoria
    elsif input.downcase == "bakerloo"
      @line = tube.bakerloo
    elsif input.downcase == "central"
      @line = tube.central
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

  def get_journey
    puts "Start:"
    @start = get_station(get_line)
    puts "Destination:"
    @finish = get_station(get_line)
    if @line.index(@start) < @line.index(@finish)
      @stops = @line.index(@finish) - @line.index(@start)
    else
      @stops = @line.index(@start)  - @line.index(@start)
    end
    puts "Your journey will take #{@stops} stops."
  end
end

class Tube
  attr_accessor :tube
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
