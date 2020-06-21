class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.references :matches, index: true, foreign_key: true, null: false
      t.references :teams, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
