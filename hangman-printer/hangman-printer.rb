def print_puzzle(word, guesses = [])
  word.each_char do |character|
  if guesses.include?(character)
    print character
  else print "_"
  end
end
end

print_puzzle("perimeter")

puts "\n====\n"

print_puzzle("triangle", ["t","s","g"])
