class User < ActiveRecord::Base
  has_many :games
  has_many :decks, through: :games
  has_many :guesses

  validates :username, presence: true
  has_secure_password

end
