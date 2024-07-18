require 'csv'

def process_data(file_path) #processing part
  players = []

  begin
    CSV.foreach(file_path, headers: true) do |row| #data being assigned tables 
      player_name = row['Player_name'] 
      runs = row['Runs_scored'].to_i
      balls = row['Balls_faced'].to_i
      fours = row['Number_of_fours'].to_i
      sixes = row['Number_of_sixes'].to_i
      strike_rate = (balls > 0) ? (runs.to_f / balls * 100).round(2) : 0.0

      players << {
        name: player_name,
        runs: runs,
        balls: balls,
        fours: fours,
        sixes: sixes,
        strike_rate: strike_rate
      }
    end
  rescue StandardError => e
    puts "Error processing CSV file: #{e.message}"
  end

  players #return players
end

def print_stats(players)
  players.each do |player|
    puts "#{player[:name]} has a strike rate of #{player[:strike_rate]}"
  end

  highest_strike_rate_player = players.max_by { |player| player[:strike_rate] }
  puts "#{highest_strike_rate_player[:name]} has the highest strike rate of #{highest_strike_rate_player[:strike_rate]}"

  total_runs = players.sum { |player| player[:runs] }
  puts "Total runs scored by all players: #{total_runs}"

  total_balls = players.sum { |player| player[:balls] }
  puts "Total balls faced by all players: #{total_balls}"

  most_fours_player = players.max_by { |player| player[:fours] }
  puts "#{most_fours_player[:name]} has the most fours with #{most_fours_player[:fours]} fours"

  most_sixes_player = players.max_by { |player| player[:sixes] }
  puts "#{most_sixes_player[:name]} has the most sixes with #{most_sixes_player[:sixes]} sixes"
end

file_path = 'sample_cricket_stats.csv'

players = process_data(file_path)
print_stats(players)
