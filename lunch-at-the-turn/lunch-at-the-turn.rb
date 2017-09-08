menu = {
  "hamburger" => 400,
  "hotdog" => 300,
  "fries" => 200,
  "chips" => 100,
  "water" => 125,
  "soda" => 150
}

puts "Welcome to the Halfway Cafe! Here is our menu:\n"
puts "Hamburger $4.00 \n Hot Dog $3.00\n Fries $2.00\n Chips $1.00\n Water $1.25\n Soda $1.50\n"

print "Please type in each item you wish to purchase, separated by a comma: "

ind_items = []
choice = gets.chomp.downcase.gsub(" ", "")
ind_items = choice.split(",")

total = 0
ind_items.each do |item|
    total += menu[item]
end

puts "Thank you! Your total is $#{total.to_f/100}."
