module Cricket
    class Player
      attr_accessor :name, :runs, :wickets#forgot to use these
  
      def initialize(name)
        @name = name
        @runs = 0
        @wickets = 0
      end
  
      def score_runs(runs)
        @runs += runs
      end
  
      def take_wickets(wickets)
        @wickets += wickets
      end
  
      def stats
        { name: @name, runs: @runs, wickets: @wickets }
      end
    end
  
    class Team
      attr_accessor :players
  
      def initialize
        @players = []
        @max_players = 15
      end
  
      def add_player(player)
        if @players.size < @max_players
          @players << player
          "#{player.name} has been added to the team."
        else
          "Cannot add more players. Max player limit reached."
        end
      end
  
      def remove_player(player_name)
        player = @players.find { |p| p.name == player_name }
        if player
          @players.delete(player)
          "#{player_name} has been removed from the team."
        else
          "#{player_name} is not in the team."
        end
      end
  
      def team_stats
        @players.map { |player| player.stats }
      end
  
      def team_count
        "Total players: #{@players.size}"
      end
  
      def display_all_players
        @players.map do |player|
          "#{player.name} scored #{player.runs} runs and took #{player.wickets} wickets."
        end.join("\n")
      end
    end
  end
  
  # Creating a team with 15 players and displaying their stats
  team = Cricket::Team.new
  
  # Adding 15 players
  15.times do |i|
    player = Cricket::Player.new("Player#{i + 1}")
    player.score_runs(rand(100))   # Random runs between 0 to 99
    player.take_wickets(rand(5))   # Random wickets between 0 to 4
    puts team.add_player(player)
  end
  
  # Display all players' stats
  puts team.display_all_players
  