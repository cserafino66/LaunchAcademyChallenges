require "spec_helper"

RSpec.describe Player do
  describe "self.all" do
    it "returns an array of player objects" do
      playerarray = Player.all
      expect(playerarray).to be_a(Array)
      expect(playerarray[0]).to be_a(Player)
    end
  end
end
