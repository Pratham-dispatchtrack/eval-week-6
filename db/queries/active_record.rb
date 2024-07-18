require_relative '../../config/environment'

# Retrieve all players of a specific team
team = Team.find_by(name: 'India')
players_of_team = team.players

# Retrieve players older than a certain age
older_players = Player.where('age > ?', 30)

# List all players and their corresponding teams
players_with_teams = Player.includes(:team).all

# Insert a new player into a team
player = Player.new(name: "Player x", age: 26, position:"Defender", team_id: 7)
player.save
# Update a player's position
player = Player.find_by(name: 'Player1')
player.update(position: 'keeper')

# Delete a player by their name
player_to_delete = Player.find_by(name: 'Player2')
player_to_delete.destroy

# Get the count of players in each team including teams without any players
player_counts = Team.left_joins(:players).group(:name).count

# Retrieve matches along with the names of both teams
matches_with_teams = Match.joins("INNER JOIN teams AS team1 ON team1.id = matches.team1_id")
                          .joins("INNER JOIN teams AS team2 ON team2.id = matches.team2_id")
                          .select('matches.*, team1.name AS team1_name, team2.name AS team2_name')

# Get the sum of scores for each team in all matches
team_scores = Match.group(:team1_id, :team2_id).sum(:score_team1, :score_team2)

# Filter teams with more than a certain number of players
teams_with_many_players = Team.joins(:players).group('teams.id').having('COUNT(players.id) > ?', 5)

# Retrieve the average age of players in each team
average_age_per_team = Team.joins(:players).group('teams.id').average('players.age')

