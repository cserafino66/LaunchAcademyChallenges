puts "Welcome to the Rock, Paper, Scissors game!"
puts "Choose your weapon: 'r' for Rock, 'p' for Paper, or 's' for Scissors."
player_choice = gets.chomp

if player_choice == "r"
  puts "You chose Rock!"
elsif player_choice == "p"
  puts "You chose Paper!"
elsif player_choice == "s"
  puts "You chose Scissors!"
else loop do puts "That's not a valid input! Choose again!"
  player_choice = gets.chomp
  break if player_choice =~ /^[rps]$/
end
end

if player_choice == "r"
  puts "You chose Rock!"
elsif player_choice == "p"
  puts "You chose Paper!"
else player_choice == "s"
  puts "You chose Scissors!"
end

computer_choice = rand(3) + 1
if computer_choice == 1
  puts "Computer chose Rock!"
elsif computer_choice == 2
  puts "Computer chose Paper!"
else puts "Computer chose Scissors!"
end

if computer_choice == 1 && player_choice == "r"
  puts "It's a tie!"
elsif computer_choice == 1 && player_choice == "p"
  puts "You win! :("
elsif computer_choice == 1 && player_choice == "s"
  puts "You lose! :("
elsif computer_choice == 2 && player_choice == "r"
  puts "You lose! :("
elsif computer_choice == 2 && player_choice == "p"
  puts "It's a tie!"
elsif computer_choice == 2 && player_choice == "s"
  puts "You win! :)"
elsif computer_choice == 3 && player_choice == "r"
  puts "You win! :)"
elsif computer_choice == 3 && player_choice == "p"
  puts "You lose! :("
else puts "It's a tie!"
end
