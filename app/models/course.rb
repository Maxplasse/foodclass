class Course < ApplicationRecord
  belongs_to :chef
  has_many :participations
  has_many :messages
  has_many :posts
  has_one_attached :photo

  scope :past, -> { where("start_at < ?", Time.now) }
  scope :upcoming, -> { where("start_at > ?", Time.now) }
end
