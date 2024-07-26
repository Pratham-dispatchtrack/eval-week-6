class AddSlugsToExistingTeams < ActiveRecord::Migration[7.1]
  def up
    Team.find_each(&:save) # Regenerates slugs for existing records
  end

  

end
