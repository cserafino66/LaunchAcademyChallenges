require_relative "./team_data"
require 'pry'


class Player
  attr_reader :name, :position, :team_name

  def initialize(name, position, team_name)
    @name = name
    @position = position
    @team_name = team_name
  end

  def self.all
    array_of_player_objects = []
    TeamData::ROLL_CALL.each do |team, roster|
      roster.each do |position, playername|
        array_of_player_objects << Player.new(playername, position.to_s, team.to_s)
      end
    end
    array_of_player_objects
  end
end
