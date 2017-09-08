require "spec_helper"

describe Hand do
  # These UTF-8 characters will be useful for making different hands:
  # '♦', '♣', '♠', '♥'

  let(:hand) { Hand.new([Card.new("♦",10), Card.new("♥","J")]) }
  let(:hand_2) { Hand.new([Card.new('♠', 'A'), Card.new('♠', 'A')])}
  # You can add more sample hands

  describe "#calculate_hand" do
    # We have included some example tests below. Change these once you get started!

    it "adds the values of the cards" do
      expect(hand.calculate_hand).to eq(20)
      expect(hand_2.calculate_hand).to eq(12)
    end
  end
end
