class Post < ApplicationRecord
  belongs_to :participant
  belongs_to :course
  has_many :comments
end
