REQUIRED_BAG_SIZE = 10

available_clubs = [
  :two_iron,
  :three_iron,
  :four_iron,
  :five_iron,
  :six_iron,
  :seven_iron,
  :eight_iron,
  :nine_iron,
  :pitching_wedge,
  :sand_wedge,
  :driver,
  :three_wood,
  :five_wood,
  :seven_wood,
  :putter
]

possible_club_selections = available_clubs.sample(REQUIRED_BAG_SIZE)

puts "Your clubs have been randomly selected!"

possible_club_selections.each do |club|
  club = club.to_s.gsub(/[_]/, " ")
  puts "Your bag contains a #{club}."
end

must_have_clubs = [:driver, :pitching_wedge, :putter]

must_have_clubs.each do |club|
  if possible_club_selections.include?(club) == false
    puts "Warning! You will be without a #{club.to_s.gsub(/[_]/, " ")}!"
  end
end
