victoria = 
[ "Kings Cross", "Euston", "Warren Street", "Oxford Circus", 
  "Green Park", "Victoria", "Pimlico" ]
bakerloo = 
[ "Elephant & Castle", "Lambeth North", "Waterloo", "Embankment", "Charing Cross", "Picadilly Circus", 
  "Oxford Circus", "Regent's Park", "Baker Street" ]
central  = 
[ "Notting Hill Gate", "Queensway", "Lancaster Gate", "Marble Arch",
"Bond Street", "Oxford Circus", "Tottenham Court Road", "Holborn", "Chancery Lane" ]

victoria = {:KingsCross => 1 :Euston => 2 :WarrenStreet => 3 :OxfordCircus => 4 :GreenPark => 5 :Victoria => 6 :Pimlico => 7} 

bakerloo = {:ElephantCastle => 1 :LambethNorth => 2 :Waterloo => 3 :Embankment => 4 :CharingCross => 5 :PicadillyCircus => 6 :OxfordCircus => 7 :RegentsPark => 8 :BakerStreet => 9}

central = {:NottingHillGate => 1 :Queensway => 2 :LancasterGate => 3 :MarbleArch => 4 :BondStreet => 5 :OxfordCircus => 6 :TottenhamCourtRoad => 7 :Holborn => 8 :ChanceryLane => 9}

number = 1
puts "victoria"
victoria.each do |station|
  print ":#{station} => #{number} " 
  number += 1
end
number = 1
puts "\n"
puts "bakerloo"
bakerloo.each do |station|
  print ":#{station} => #{number} " 
  number += 1
end
number = 1
puts "\n"
puts "central"
central.each do |station|
  print ":#{station} => #{number} " 
  number += 1
end