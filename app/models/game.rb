class Game < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck
  has_many :guesses
  # has_many :cards, through: :deck
  validates :deck_id, presence: true
  validates :user_id, presence: true
end
