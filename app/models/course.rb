class Course < ApplicationRecord
  belongs_to :chef
  has_many :participants
  has_many :messages
  has_many :posts
  has_one_attached :photo
end
