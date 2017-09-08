dinner_total = 178
tip = 20
dinner_total = dinner_total.to_f
tip = tip.to_f

tip_total = dinner_total * tip/100
total_plus_tip = dinner_total + tip_total

puts "You should tip $#{tip_total}"
puts "The total bill is $#{total_plus_tip}"
