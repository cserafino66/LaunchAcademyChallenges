puts "Hello, I'm a talking vending machine. What would you like today?"
item = gets.chomp
puts "How many of those would you like?"
amount = gets.chomp

if amount.index("tons").nil? == false
  breaker = rand(14)
  while breaker != 0
  puts "Here's a #{item}!"
  breaker = rand(14)
end
else amount.to_i.times do
  puts "Here's a #{item}!"
end
end
puts "There you go! Come again!"
