require "sinatra"
require 'pry'
require 'csv'
require_relative './item.rb'

set :bind, '0.0.0.0'

def items_array
  items = []
  CSV.foreach('grocery_list.csv', headers: true) do |line|
    items << Item.new(line["name"])
  end
  items
end

get "/" do
  redirect to "/grocery-list"
end

get "/grocery-list" do
  @items = items_array
  erb :index
end

post "/grocery-list" do
    CSV.open("grocery_list.csv", "a") do |csv|
      if params[:Name] != ""
      csv << [params[:Name]]
      end
    end
  redirect to "/grocery-list"
end
