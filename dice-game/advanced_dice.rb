print "How many sides does your first die have?: "
die_1 = gets.chomp.to_i
print "How many sides does your second die have?: "
die_2 = gets.chomp.to_i

if die_1 > 6 || die_2 > 6
  puts "OoOoOoOo...look at the Dungeon Master over here."
end

print "How many times would you like to roll your dice?: "
rolls = gets.chomp.to_i

counter = 0

if rolls <= 0
  puts "Ok, exiting..."
else while counter < rolls
  number_1 = rand(die_1) + 1
  number_2 = rand(die_2) + 1
  puts "You rolled a #{number_1} and a #{number_2}"
  puts "Total: #{number_1 + number_2}"
  counter = counter + 1
end
end
