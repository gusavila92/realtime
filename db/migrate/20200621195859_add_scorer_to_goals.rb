class AddScorerToGoals < ActiveRecord::Migration[6.0]
  def change
    add_reference :goals, :player, index: true
    add_foreign_key :goals, :players

    add_column :goals, :minute, :integer, null: false
  end
end
