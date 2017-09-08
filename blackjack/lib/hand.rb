require_relative 'deck'

class Hand
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def calculate_hand
    hand_total = 0
    high_aces = 0
    @cards.each do |card|
      if card.rank == 'J' || card.rank == 'Q' || card.rank == 'K'
        hand_total += 10
      elsif card.rank == 'A'
        hand_total += 11
        high_aces += 1
      else
        hand_total += card.rank
      end
    end
    if hand_total > 21 && high_aces > 0
      hand_total -= 10
      high_aces - 1
    end
    return hand_total
  end
end
