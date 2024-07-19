class TeamsController < ApplicationController
    before_action :set_team, only: [:show, :update, :edit, :destroy]
   
    def show
    end
    
    def index
        @all_teams = Team.all
    end

    def new
        @team = Team.new
    end

    def edit
    end

    def create
        @team = Team.new(team_params)
        if @team.save
            flash[:notice] = "team was created successfully. "
            redirect_to team_path(@team)
        else
            render 'new', status: 422
        end
    end

   

    def update
        if @team.update(team_params)
            flash[:notice] = "team was updated successfully"
            redirect_to @team
        else
            render 'edit', status: 422
        end

    end

    def destroy
        @team.destroy
        redirect_to teams_path
    end

    private
    def set_team
        @team = Team.find(params[:id])
    end

    def team_params
        params.require(:team).permit(:id, :name, :country, :founded, :description)
    end

end

