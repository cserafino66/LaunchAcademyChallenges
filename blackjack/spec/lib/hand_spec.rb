require "spec_helper"

RSpec.describe Hand do

  let (:hand) { Hand.new([Card.new('♣', 10), Card.new('♣', 'A')])}
  let (:hand_2) { Hand.new([Card.new('♠', 'A'), Card.new('♠', 'A')])}
  let (:hand_3) { Hand.new([Card.new('♠', 'K'), Card.new('♠', 'J')])}

  describe "#calculate_hand" do
    it "adds the value of the cards together" do
      expect(hand.calculate_hand).to eq(21)
      expect(hand_2.calculate_hand).to eq(12)
      expect(hand_3.calculate_hand).to eq(20)
    end
  end
end
