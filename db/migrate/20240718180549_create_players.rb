class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players do |t|
      t.string :name, null: false
      t.integer :age
      t.string :position
      t.integer :team_id, null: false

      t.timestamps
    end

    add_foreign_key :players, :teams, column: :team_id
  end
end
