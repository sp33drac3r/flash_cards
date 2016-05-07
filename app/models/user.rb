class User < ActiveRecord::Base
  has_many :games
  has_many :decks, through: :games

  validates :username, presence: true
  validates :password_digest, presence: true

end
