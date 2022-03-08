class Emoji < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :content, uniqueness: { scope: :user }
  EMOJIS = [':heart_eyes:']
  validates :content, inclusion: { in: EMOJIS }
end
