puts "Welcome to the Tracking App! Please input your sales!"

total_sales = 0.0

while total_sales < 100 do
  print "> "
  sale_input = gets.chomp.to_f
  total_sales = sale_input + total_sales
end

puts "You've reached 100!"
