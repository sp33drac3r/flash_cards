class CreateUserCards < ActiveRecord::Migration
  def change
    create_table :card_users do |t|
      t.references :user, index: true
      t.references :card, index: true

      t.timestamps null: false
    end
  end
end
