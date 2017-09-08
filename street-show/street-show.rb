#Part 1!

number_of_tips = 12

knife_juggling_total = (2.10 + 0.77 + 5.00 + 1.00 + 3.00).round(2)

puts "Knife Juggling: #{knife_juggling_total}"

torch_juggling_total = 6.00 + 3.50 + 7.00

puts "Torch Juggling: #{torch_juggling_total}"

hand_balancing_total = 2.00 + 1.00

puts "Hand Balancing: #{hand_balancing_total}"

human_blockhead_total = 0.75 + 0.43

puts "Human Blockhead: #{human_blockhead_total}"

total_tips = knife_juggling_total + torch_juggling_total + hand_balancing_total + human_blockhead_total

puts "Total Money from Tips: #{total_tips}"

puts "Average Tip Value: #{total_tips/number_of_tips}"

#Part 2!

puts "Welcome to the Rubiest Ruby Show! May I have a volunteer from the audience?"
puts "Thanks for volunteering! What's your name?"
name = gets.chomp
puts "Let's give a big round of applause for " + name + ", shall we?"
puts "What's your favorite number, " + name + "?"
fav_number = gets.chomp
puts "My fearless companion and I will now juggle these knives over " + name + "'s head for " + fav_number + " seconds!"
