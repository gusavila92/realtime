class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.references :match, index: true, foreign_key: true, null: false
      t.references :team, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
