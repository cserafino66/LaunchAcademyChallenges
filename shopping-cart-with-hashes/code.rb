prices = {}
quantities = {}

while true
  print "What is the name of your item?\n>"
  name = gets.chomp

  if prices[name].nil?
    print "What is the value of your item?\n>"
    prices[name] = gets.chomp.to_f
  end

  print "How many do you want to add?\n>"
  if quantities[name].nil?
    quantities[name] = 0
  end

  quantities[name] = gets.chomp.to_i

  print "Any more items? (Y/n)\n>"
  continue = gets.chomp
  if continue.downcase == 'n'
    break
  end
end

total = 0
prices.each do |name, price|
  total = total + subtotal
  puts "#{quantities[name]}#{name}: #{price} ea: #{subtotal}"
  subtotal = quantities[name] * price
end

puts "Total: #{total}"
