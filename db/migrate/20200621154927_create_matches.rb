class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.bigint :away_team_id, null: false
      t.bigint :home_team_id, null: false
      t.string :stadium, null: false

      t.timestamps
    end
  end
end
