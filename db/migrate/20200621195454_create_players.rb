class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name, null: false
      t.references :team, index: true, foreign_key: true

      t.timestamps
    end
  end
end
