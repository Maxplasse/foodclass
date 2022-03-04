class Post < ApplicationRecord
  belongs_to :participation
  belongs_to :course
  has_many :comments, dependent: :destroy
  has_many :upvotes, dependent: :destroy
  has_one_attached :photo
end
