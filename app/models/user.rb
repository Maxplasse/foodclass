class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :chef
  has_many :courses, through: :chef
  has_many :participations
  has_many :upvotes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :courses_as_participant, through: :participations, source: :course

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  include PgSearch::Model
  multisearchable against: [:first_name, :last_name, :nickname]

  def number_of_points
    courses_as_participant.sum(:level_points)
  end

  LEVELS = [
    {
      min_points: 0,
      max_points: 49,
      name: "Apprenti",
      icon_name: "apprenti.png",
      icon_level: "Apprenti.svg"
    },
    {
      min_points: 50,
      max_points: 124,
      name: "Commis",
      icon_name: "commis.png",
      icon_level: "Commis.svg"
    },
    {
      min_points: 125,
      max_points: 249,
      name: "Sous-chef",
      icon_name: "sous-chef.png",
      icon_level: "Souschef.svg"
    },
    {
      min_points: 250,
      max_points: 399,
      name: "Chef",
      icon_name: "chef.png",
      icon_level: "Chef.svg"
    },
    {
      min_points: 400,
      max_points: 1_000_000,
      name: "FoodClass Chef",
      icon_name: "fc_chef.png",
      icon_level: "Foodclass_chef.svg"
    }
  ]

  def current_level
    LEVELS.find do |level|
      number_of_points >= level[:min_points] && number_of_points <= level[:max_points]
    end
  end

  def current_level_name
    current_level[:name]
  end

  def current_level_icon_name
    current_level[:icon_name]
  end

  def current_level_icon_level
    current_level[:icon_level]
  end

  def level_validated?(level)
    LEVELS.index(level) <= LEVELS.index(current_level)
  end

  def next_level_min_points
    (current_level[:max_points] + 1) - number_of_points
  end
end
