class Course < ApplicationRecord
  belongs_to :chef
  has_many :participations
  has_many :messages
  has_many :posts
  has_one_attached :photo

  include PgSearch::Model
  multisearchable against: [:title, :difficulty, :category]
end
