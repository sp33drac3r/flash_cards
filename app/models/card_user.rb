class CardUser < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :card
  belongs_to :user
end
