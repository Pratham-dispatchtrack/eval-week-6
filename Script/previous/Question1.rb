#q1
class Team < Player
    @@members == 0
    def initialize()
        @team = []
       
    end
    def add_player(name)
        @team << name
        if @@members<=14
            @@members +=1
        else
            "Input wont be taken Max player limit reached"
        end
    end
    def remove_player(name)
        @team.delete(name)
    end
    def team_stats(player)
        super.stats
    end
    def team_count()
        p "Total people #{@@members}"
    end
end




class Player
    @@total_runs = 0
    @@total_wickets = 0
    @@id = 1
    def initialize()
        @player = {}
        @stats = []
        @runs = runs
        @wickets = wickets
        @names = names
    end
    def Runs_Scored(runs)
        @@total_runs += runs
        @stats << @@total_runs
    end
    def wickets_Taken(wickets)
        @@total_wickets += wickets
        @stats << @@total_wickets
    end
    def name_of(names,@stats)
        @player[names] = @stats
        
    end
    def display_stats(names)
        p "these are the stats of #{names} are #{player[names]}"
end
