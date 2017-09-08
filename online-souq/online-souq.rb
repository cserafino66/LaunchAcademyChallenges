puts "Welcome to the Online Souq!"
print "What's your name?: "
name = gets.chomp

souq_items = ["old paperback book", "potato", "red onion", "dried lemon",
  "frankincense", "medicinal herbs", "saffron", "glass spice jar", "red fabric",
  "orange fabric", "handicrafts", "small Persian rug", "medium Persian rug",
  "large Persian rug", "extra large Persian rug"]

puts "Hi #{name}, here is the list of available items."
souq_items.each do |item|
  puts "* #{item} \n"
end

user_cart = []
not_in_stock = []

while true
  print "Select an item, or type 'c' to view your cart, type 'm' to see the the list ,
  or type 'finished' to proceed to checkout. : "
  selection = gets.chomp
  if selection == "m"
    souq_items.each do |item|
      puts "* #{item} \n"
    end
  elsif selection == "c"
    user_cart.each do |item|
      puts "* #{item} \n"
    end
  elsif selection == 'finished'
    puts "Ok, proceeding to checkout."
    break
  elsif souq_items.include?(selection) == false
    puts "That item is not available."
    not_in_stock = not_in_stock.push(selection)
  else user_cart = user_cart.push(selection)
  end
end

puts "Here are the items in your cart:"
user_cart.each do |item|
  puts "* #{item} \n"
end

puts "Here are the items that you requested but which aren't available
in the Online Souq:"
not_in_stock.each do |item|
  puts "* #{item} \n"
end
