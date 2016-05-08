class Game < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck
  has_many :guesses

  validates :deck_id, presence: true
  validates :user_id, presence: true
end
