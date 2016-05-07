class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :user, index: true
      t.references :deck, index: true
      t.integer :guesses
      t.integer :first_guess_corrects

      t.timestamps null: false
    end
  end
end