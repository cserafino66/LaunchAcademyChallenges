class Project < ActiveRecord::Base
  has_many :users, through: :teams
  has_many :teams

  validates :name, presence: true
end
