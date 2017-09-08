# counter = 1
#
# while counter < 101
#   if counter % 3 == 0 && counter % 5 == 0
#     puts "FizzBuzz"
#     counter += 1
#   elsif counter % 5 == 0
#     puts "Buzz\n"
#     counter += 1
#   elsif counter % 3 == 0
#     puts "Fizz\n"
#     counter += 1
#   else puts "#{counter}\n"
#     counter += 1
#   end
# end


counter = 1

while counter < 101
  if counter % 3 == 0 && counter % 5 == 0
    puts "rightpoint"
    counter += 1
  elsif counter % 5 == 0
    puts "point\n"
    counter += 1
  elsif counter % 3 == 0
    puts "right\n"
    counter += 1
  else puts "#{counter}\n"
    counter += 1
  end
end
