class Participant < ApplicationRecord
  belongs_to :user
  belongs_to :course

  scope :created_before, ->(time) { where('created_at < ?', time) }
  scope :created_after, ->(time) { where('created_at > ?', time) }
end
