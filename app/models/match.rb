require 'csv'

class Match < ApplicationRecord
  def self.import_from_csv(file_path)
    CSV.foreach(file_path, headers: true) do |row|
      Match.create!(
        date: row['date'],
        location: row['location'],
        team1_id: row['team1_id'],
        team2_id: row['team2_id'],
        score_team1: row['score_team1'],
        score_team2: row['score_team2']
      )
    end
  end
end
