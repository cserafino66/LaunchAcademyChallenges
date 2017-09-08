require_relative "./team_data.rb"
require_relative "./player.rb"

class Team
  attr_reader :name, :players

  def initialize(name)
    @name = name
  end

  def self.all
    array_of_team_objects = []
    TeamData::ROLL_CALL.each do |team|
      array_of_team_objects << Team.new(team)
    end
    array_of_team_objects
  end

  def players
    players_array = []
    TeamData::ROLL_CALL.each do |team, roster|
      roster.each do |position, playername|
        players_array << Player.new(playername, position.to_s, team.to_s)
      end
    end
  end
end
