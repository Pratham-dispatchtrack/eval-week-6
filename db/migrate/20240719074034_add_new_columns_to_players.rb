class AddNewColumnsToPlayers < ActiveRecord::Migration[7.1]
  def change
    add_column :players, :roles, :string, null: false, default: 'batsman'
    add_column :players, :is_captain, :boolean, null: false, default: false
    add_column :players, :is_active, :boolean, null: false, default: true
    add_column :players, :description, :text, null: false, default: 'something'

  end
end
