class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :correct_guesses, default: 0
      t.integer :total_guesses, default: 0
      t.references :user
      t.references :card

      t.timestamps null: false
    end
  end
end
