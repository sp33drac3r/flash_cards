class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.boolean :correct, {null: false}
      t.references :game, index: true
      t.integer :user, index: true
      t.integer :card, index: true

      t.timestamps null: false
    end
  end
end
