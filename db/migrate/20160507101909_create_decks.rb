class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :name, {null: false}
      t.string :image

      t.timestamps null: false
    end
  end
end