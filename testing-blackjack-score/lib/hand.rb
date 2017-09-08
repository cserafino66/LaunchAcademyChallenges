require_relative 'deck'
require 'pry'

class Hand
  def initialize(cards)
    @cards = cards
  end

  def calculate_hand
    hand_total = 0
    @cards.each do |card|
      if card.value == 'J' || card.value == 'Q' || card.value == 'K'
        hand_total += 10
      elsif card.value == 'A'
        if (hand_total + 11) > 21
          hand_total += 1
        else
          hand_total += 11
        end
      else
        hand_total += card.value
      end
    end
    return hand_total
  end
end

deck = Deck.new
cards = deck.deal(2)
hand = Hand.new(cards)
# hand.calculate_hand # Get this working properly
