golf_clubs = {
  driver: 200,
  four_wood: 180,
  five_wood: 170,
  two_iron: 170,
  three_iron: 160,
  four_iron: 150,
  five_iron: 140,
  six_iron: 130,
  seven_iron: 120,
  eight_iron: 110,
  nine_iron: 95,
  pitching_wedge: 80,
  sand_wedge: 20,
  putter: 0
}

puts "Welcome to the Pocket Club Advisor!"
print "What is your distance from the the hole, in yards?: "
distance = gets.chomp.to_i

potential_clubs = []

golf_clubs.each do |club, yards|
   if distance >= yards.to_i
     potential_clubs << club.to_s.gsub("_", " ")
   end
end


puts "Use the #{potential_clubs.first}."
