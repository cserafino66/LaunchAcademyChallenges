hole_info = [
  {"Par" => 5, "Score" => 7},
  {"Par" => 4, "Score" => 5},
  {"Par" => 3, "Score" => 3},
  {"Par" => 4, "Score" => 4},
  {"Par" => 4, "Score" => 4},
  {"Par" => 3, "Score" => 2},
  {"Par" => 4, "Score" => 5},
  {"Par" => 5, "Score" => 5},
  {"Par" => 4, "Score" => 5},
  {"Par" => 5, "Score" => 7},
  {"Par" => 4, "Score" => 4},
  {"Par" => 4, "Score" => 4},
  {"Par" => 3, "Score" => 3},
  {"Par" => 4, "Score" => 5},
  {"Par" => 4, "Score" => 5},
  {"Par" => 4, "Score" => 4},
  {"Par" => 3, "Score" => 3},
  {"Par" => 5, "Score" => 6}
]


total_score = 0
total_par = 0

hole_info.each do |hash|
    total_score += hash["Score"]
    total_par += hash["Par"]
end

puts "Total Score: #{total_score}"
puts "Total Par: #{total_par}"

par_plusminus = total_score - total_par

if par_plusminus == 0
  puts "You shot par for the course!"
elsif total_score - total_par > 0
  puts "You shot #{par_plusminus} over par."
else puts "You shot #{0-par_plusminus} under par."
end
