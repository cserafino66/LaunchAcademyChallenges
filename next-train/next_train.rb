puts "What time do you want to leave the office?"
user_leaves = gets.chomp.to_f

train_departs = [2.0, 5.0, 7.5, 8.5, 9.0, 10.0, 11.5, 13.5, 14.5,
  17.0, 18.0, 19, 24]

next_train = train_departs.select do |time|
  time > user_leaves
end

user_train = next_train.first

puts "If you leave the office at #{user_leaves}, you should catch Train
#{train_departs.index(user_train) + 1} at #{user_train}."
