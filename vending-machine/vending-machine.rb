items_we_have = "chips popcorn skittles clif-bar mentos gum cheetos m&ms"
puts "We have " + items_we_have + ". Which item would you like?"
item_they_want = gets.chomp
location = items_we_have.index(item_they_want)
if location == nil
  puts "We don't have that item."
else puts "Item Index: #{location}"
end
