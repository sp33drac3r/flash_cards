class User < ActiveRecord::Base
  has_many :games
  has_many :decks, through: :games
  has_many :card_users
  has_many :cards, through: :card_users

  validates :username, presence: true
  validates :password_digest, presence: true

end
