require "pry"

puts "Welcome to the Guessing Game! Which setting would your like? Press 'e'
for Easy or 'h' for Hard."

easy_or_hard = gets.chomp

while easy_or_hard != "e" && easy_or_hard != "h"
  print "Please choose 'e' for Easy or 'h' for Hard:"
  easy_or_hard = gets.chomp
end

if easy_or_hard == "e"
  easy_score = 1
  easy_number = rand(10) + 1

binding.pry

  puts "You have chosen the Easy setting. I have picked a number between 1
  and 10. Guess what it is!"
  user_guess = gets.chomp.to_i
  while user_guess != easy_number
    print "Wrong! Try again: "
    user_guess = gets.chomp.to_i
    easy_score = easy_score + 1
  end
else hard_number = rand(20) + 1
  hard_score = 1

binding.pry

  puts "You have chosen the Hard setting. I have picked a number between 1
  and 20. Guess what it is!"
  user_guess = gets.chomp.to_i
  while user_guess != hard_number
    print "Wrong! Try again: "
    user_guess = gets.chomp.to_i
    hard_score = hard_score + 1
  end
end

puts "You win! Nice job! :D"
if easy_or_hard == "e"
  puts "Your score was #{easy_score}."
else puts "Your score was #{hard_score}."
end
