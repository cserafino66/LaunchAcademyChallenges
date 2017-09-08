# # Write Ruby<->English answers here as comments in your code

# Ruby ---> English

# 1. For every element 'number' in the array 'numbers', print the value of the element multiplied by 3.
#
# 2. For every element 'name' in the array 'names', print the number of characters in the element.
#
# 3. Assign a variable 'sum' with a value of 0. For every element 'number' in the array 'numbers',
#     add the element value to the value of the variable 'sum' and reassign the variable
#     'sum' to this new value. Upon completion, print out the variable 'sum'.
#
# 4. For every name-age pair in the hash 'hash', print the pair in the format '*name* is *age* years old.'
#
# 5. Assign a variable 'sum' with a value of 0. For every transaction-value pair in the hash 'account',
#     add the value of 'value' to the value of the variable 'sum' and reassign the variable 'sum'
#     to the total of the two. Upon completion, print out the variable 'sum' in the format
#     'The value of the account is *sum*.'
#
# 6. For every key-value pair in the hash 'addresses', print out the key and the value
#     in the format '*key* lives on *value*'


# English ---> Ruby

#1
sentences =["These", "iteration", "drills", "are", "repetitive", "LOL ;)"]
sentences.each do |word|
  puts "#{word}"
end

puts "====="

#2
area_codes = [413, 978, 351, 617, 857, 508, 774, 781, 339]
phone_numbers = [6175487526, 9785785820, 1112223334]

matching_numbers = phone_numbers.select do |phone_number|
  area_codes.any? do |area_code|
    phone_number.include?(area_code)
end
end
puts matching_numbers

puts "====="
#3
numbers = [1, 2, 3, 4, 5, 6, 7]
puts numbers.select { |number| number.odd? }

puts "====="

#4
ages = {
  "Jane" => 12,
  "Albert" => 14,
  "Michael" => 8,
  "Rita" => 7,
  "Myriam" => 17
}

ages.each do |name, age|
  puts "#{name}: #{age}"
end

#5
puts "====="

ages.each do |name, age|
  if age > 10
    puts "#{name} ~ #{age}"
  end
end

#6
puts "====="

ages.each do |name, age|
  if age % 2 == 0
    puts "#{name} = #{age}"
  end
end




array = [28214, 63061, 49928, 98565, 31769, 42316, 23674, 3540, 34953, 70282, 22077, 94710,
  50353, 17107, 73683, 33287, 44575, 83602, 33350, 46583]

# Write Ruby code to find out the answers to the following questions:

# * What is the sum of all the numbers in `array`?
total = 0
array.each do |number|
  total += number
end
puts total

# * How would you print out each value of the array?
array.each do |number|
  puts number
end

# * What is the sum of all of the even numbers?
evens_total = 0
array.each do |number|
  if number % 2 == 0
    evens_total += number
  end
end
puts evens_total

# * What is the sum of all of the odd numbers?
odds_total = 0
array.each do |number|
  if number % 2 != 0
    odds_total += number
  end
end
puts odds_total

# * What is the sum of all the numbers divisble by 5?
div_by_five_total = 0
array.each do |number|
  if number % 5 == 0
    div_by_five_total += number
  end
end
puts div_by_five_total

# * What is the sum of the squares of all the numbers in the array?
squares = []
squares_total = 0
array.each do |number|
  squares << number * number
end

squares.each do |number|
    squares_total += number
  end
puts squares_total


array = ["joanie", "annamarie", "muriel", "drew", "reva", "belle", "amari", "aida", "kaylie",
  "monserrate", "jovan", "elian", "stuart", "maximo", "dennis", "zakary", "louvenia", "lew", "crawford", "caitlyn"]

# Write Ruby code to find out the answers to the following questions:

# * How would you print out each name backwards in `array`?
puts array.reverse

# * What are the total number of characters in the names in `array`?
total_characters = 0
array.each do |name|
  total_characters += name.length
end
puts total_characters

# * How many names in `array` are less than 5 characters long?
less_than_five = 0
array.each do |name|
  if name.length < 5
    less_than_five += 1
  end
end
puts less_than_five

# * How many names in `array` end in a vowel?
end_in_vowel = 0
array.each do |name|
    if name[-1] == "a"
    end_in_vowel += 1
    elsif name[-1] == "e"
    end_in_vowel +=1
    elsif name[-1] == "i"
    end_in_vowel += 1
  elsif name [-1] == "o"
    end_in_vowel += 1
  elsif name[-1] == "u"
  end_in_vowel += 1
  end
end
puts end_in_vowel

# * How many names in `array` are more than 5 characters long?
more_than_five = 0
array.each do |name|
  if name.length > 5
    more_than_five += 1
  end
end
puts more_than_five

# * How many names in `array` are exactly 5 characters in length?
exactly_five = 0
array.each do |name|
  if name.length == 5
    exactly_five += 1
  end
end
puts exactly_five
