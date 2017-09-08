require "sinatra"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"
require 'pry'
set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do
  redirect to '/teams'
end

get "/teams" do
  @teams = TeamData::ROLL_CALL.keys
  erb :index
end

get "/teams/:team_name" do
  @team = params[:team_name]
  @playerlist = TeamData::ROLL_CALL[@team.to_sym]
  erb :team
end
