length = 20
width = 8
snowfall = 8/12.to_f

cubic_feet = (length * width) * snowfall

puts "Total cubic feet of snow: #{cubic_feet}"

if cubic_feet < 50
  price = 20
elsif cubic_feet >= 50 && cubic_feet < 150
  price = 50
elsif cubic_feet >= 150 && cubic_feet < 300
  price = 100
else price = 150
end

puts "The cost is $#{price}."
