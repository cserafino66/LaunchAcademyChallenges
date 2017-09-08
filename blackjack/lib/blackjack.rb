require_relative "card"
require_relative "deck"
require_relative "hand"
require "pry"

deck = Deck.new
cards = deck.deal(2)
cards1 = deck.deal(2)

player = Hand.new(cards)
computer = Hand.new(cards1)


puts "Player has #{player.cards[0].rank}#{player.cards[0].suit} and #{player.cards[1].rank}#{player.cards[1].suit}"
puts player.calculate_hand

puts "Computer is showing #{computer.cards[0].rank}#{computer.cards[0].suit}"



choice = ''
while choice != 'stay' do
  puts "Hit or Stay?"
  choice = gets.chomp.downcase.to_s
  if choice == 'hit'
    cards.concat deck.deal(1)
    puts "Player has #{player.calculate_hand}"
    if player.calculate_hand > 21
      puts "BUST!! Player loses!"
      choice = 'stay'
      break
    elsif player.calculate_hand == 21
      puts 'Player wins!!'
      break
    end
  else
    puts "Player has #{player.calculate_hand}"
  end
end

if choice == 'stay'
  while computer.calculate_hand < 17
    if player.calculate_hand > computer.calculate_hand && player.calculate_hand < 21
      cards1.concat deck.deal(1)
      if computer.calculate_hand > 21
        puts "BUST!! Computer loses!"
      end
    end
  end
end

puts "Computer has #{computer.calculate_hand}"
puts "Player has #{player.calculate_hand}"

if player.calculate_hand > computer.calculate_hand && player.calculate_hand <= 21
  puts "Player wins!"
elsif computer.calculate_hand <= 21 && computer.calculate_hand > player.calculate_hand
  puts "Computer wins!"
elsif computer.calculate_hand == player.calculate_hand
  puts "Hand is a Push!"
end
