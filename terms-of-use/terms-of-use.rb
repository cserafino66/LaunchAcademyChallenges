def disclaimer
  puts "***DISCLAIMER***"
  puts "This code may not work the way you expect it to."
  puts "By using this temperamental program, you agree not to"
  puts "sue the pants off of its creator."
  puts "    ***     "
end

user_input = 'placeholder'
while user_input != 'y'
  disclaimer
  puts "You must accept the disclaimer to continue! Do you accept? (y/n)"
  user_input = gets.chomp.downcase
end

puts "3 + 2 = #{rand(6)}"
