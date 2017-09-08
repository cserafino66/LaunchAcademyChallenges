require 'time'

class Movie
  attr_accessor :name, :genre, :time

  def initialize(movie_hash)
    @name = movie_hash[:name]
    @genre = movie_hash[:genre]
    @time = Time.parse(movie_hash[:time].strip)
  end

  def showing_after?(arrival_time)
    @time >= Time.parse(arrival_time)
  end

  def comedy?
    @genre == 'Comedy'
  end

  def showing_between?(low_param, high_param)
    @time.between?(Time.parse(low_param), Time.parse(high_param))
  end
end

movies = [
  {name: "The Princess Bride", genre: "Comedy", time: "7:00PM"},
  {name: "Troll 2", genre: "Horror", time: "7:30PM"},
  {name: "Pet Cemetery", genre: "Horror", time: "8:15PM"},
  {name: "Flight of the Navigator", genre: "Adventure", time: "8:17PM"},
  {name: "Teen Witch", genre: "Comedy", time: "8:20PM"},
  {name: "The Goonies", genre: "Comedy", time: "8:30PM"},
  {name: "Better Off Dead", genre: "Comedy", time: "8:45PM"},
  {name: "Weekend at Bernies", genre: "Comedy", time: "9:00PM"},
  {name: "The Wizard", genre: "Adventure", time: "9:10PM"}
]

objects_list = []

movies.each do |movie_hash|
  objects_list << Movie.new(movie_hash)
end

puts objects_list

puts "The following moives are comedies:"
puts objects_list.select { |movie| movie.comedy? }
