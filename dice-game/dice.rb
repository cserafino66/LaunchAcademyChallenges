print "Press Enter to roll the dice, 's' to stop:"
user_input = gets.chomp

while user_input != 's'
  first_number = rand(6) + 1
  second_number = rand(6) + 1

  puts "You rolled a #{first_number} and a #{second_number}"
  puts "Total: #{first_number + second_number}"

  print "Press Enter to roll the dice, 's' to stop:"
  user_input = gets.chomp

end
