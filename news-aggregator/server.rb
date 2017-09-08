require 'sinatra'
require 'pry'
require_relative 'article.rb'
require 'csv'

set :bind, '0.0.0.0'  # bind to all interfaces

def array_of_article_objects
  articles = []
  CSV.foreach('articles.csv', headers: true) do |row|
    articles << Article.new(row["title"], row["URL"], row["description"])
  end
  articles
end

get '/' do
  redirect to '/articles'
end

get '/articles' do
  @articles = array_of_article_objects
  erb :index
end

get '/articles/new' do
  erb :new
end

post '/articles/new' do


  if "there is a validation error"
    # create message
    # render the new page

  else

    CSV.open("articles.csv", "a") do |csv|
      csv << [params[:title],params[:url],params[:description]]
    end
    redirect to "/articles"
  end
end
