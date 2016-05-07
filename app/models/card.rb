class Card < ActiveRecord::Base
  belongs_to :deck
  has_many :guesses

  validates :question, presence: true
  validates :answer, presence: true
  validates :deck_id, presence: true

  def check_answer(answer)
    answer == self.answer
  end
end
