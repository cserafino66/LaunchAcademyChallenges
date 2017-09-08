require "spec_helper"

RSpec.describe Team do
  describe "self.all" do
    it "returns an array of Team objects" do
      teamarray = Team.all
      expect(teamarray).to be_a(Array)
      expect(teamarray[0]).to be_a(Team)
    end
  end

  describe "#players" do
    it "returns an array of Player objects" do
      playerarray = Team.players
      expect(playerarray).to be_a(Array)
      expect(playerarray[0]).to be_a(Player)
      expect()
    end
  end
end
