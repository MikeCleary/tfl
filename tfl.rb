require 'pry'

stations =[ 
[ "Kings Cross", "Euston", "Warren Street", "Oxford Circus", 
  "Green Park", "Victoria", "Pimlico"],
[ "Elephant & Castle", "Lambeth North", "Waterloo", 
  "Embankment", "Charing Cross", "Picadilly Circus", 
  "Oxford Circus", "Regent's Park", "Baker Street" ],
[ "Notting Hill Gate", "Queensway", "Lancaster Gate", 
  "Marble Arch", "Bond Street", "Oxford Circus", 
  "Tottenham Court Road", "Holborn", "Chancery Lane" ] 
]

def puts_lines
  lines = ["Victoria", "Bakerloo", "Central"]
  option_number = 0
  lines.each do |option|
    puts "#{option_number}. #{option}" 
    option_number += 1
  end
end

def puts_stations(line)
  station_number = 0
  stations[line].each do |station|
    puts "#{station_number}. #{station}" 
    station_number += 1
  end  
end

def get_line
  line = gets.chomp.to_i
end

def get_station(line)
  puts "Enter the number of your station"
  station = stations.line[gets.chomp.to_i]
end

def get_start(stations)
  puts_lines
  puts "Enter your starting line"
  line = get_line
  puts_stations(line)
  start_station = get_station(line)
end

def get_end(stations)
  puts_lines
  puts "Enter your starting line"
  line = get_line
  puts_stations(line)
  puts "Enter your starting station"
  end_station = get_station(line) 
end

def calculate_stops(start_station, end_station)
  puts start_station
  puts end_station
end
pry.binding
calculate_stops(get_start, get_end)