puts "Welcome to the Time Capsule Maker!"
print "What's your name?: "
name = gets.chomp

puts "Hi, #{name}, what would you like to add to the time capsule? Type 'finished' when you
completed entering items."

time_capsule = []

while true
  print "Enter an item > "
  item = gets.chomp
  if item == 'finished'
    puts "Ok, #{name}, the contents of your time capsule are: "
    time_capsule.each do |item|
      puts "* #{item}\n"
    end
    break
  else puts "And how many of those would you like to put in?"
    amount_of_things = gets.chomp.to_i
    time_capsule << "#{item} (#{amount_of_things})"
  end
end
