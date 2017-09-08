class Article < ActiveRecord::Base
  has_many :comments
  
  def comments
    Comment.where(article_id: id)
  end
end
