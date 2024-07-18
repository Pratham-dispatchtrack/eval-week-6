require 'csv'

CSV.read('sample_cricket_stats.csv')

CSV.foreach(csv_file_path, headers: true) do |row|
  
  Player = row['Player name']
  Runs_Scored= row['Runs Scored']
  Balls_Faced = row['Balls Faced']
  NUmber_of_Fours = row['NUmber of Fours']
  NUmber_of_Sixes = row['NUmber of Sixes']
  
  puts "PLayer: #{Player}, Runs: #{Runs Scored}, Fours: #{NUmber_of_Fours}"
end