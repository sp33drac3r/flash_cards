class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.boolean :correct, {null: false}
      t.boolean :first_guess_correct, {null: false}
      t.references :game, index: true
      t.references :user, index: true
      t.references :card, index: true

      t.timestamps null: false
    end
  end
end
