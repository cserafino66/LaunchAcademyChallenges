require "spec_helper"

RSpec.describe Card do
  card = Card.new('♠', 7)
  it "takes an argument for suit" do
    expect(card.suit).to eq('♠')
    expect(card.rank).to eq(7)
  end
end
