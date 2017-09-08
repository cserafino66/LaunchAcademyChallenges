require "spec_helper"

RSpec.describe Deck do
  deck = Deck.new

  describe "#build_deck" do
    it "creates a card object for each value and type" do
      expect(deck.cards.size).to eq(52)
    end

    it "creates unique cards" do
      expect(deck.cards.uniq.size).to eq(52)
    end
  end

  describe "#deal" do
    it "removes a number of cards from the deck" do
      two_cards_dealt = deck.deal(2)
      expect(deck.cards.size).to eq(50)
    end
  end
end
