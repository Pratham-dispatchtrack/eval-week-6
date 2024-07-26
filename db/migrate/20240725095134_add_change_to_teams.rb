class AddChangeToTeams < ActiveRecord::Migration[7.1]
  def down
    Team.update_all(slug: nil) # Optional: Clear slugs if needed
  end
end
