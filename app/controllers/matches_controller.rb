class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: %i[ show ]

  def index
    @teams = Team.all
    @matches = Match.includes(:home_team, :away_team)
    
    if params[:search].present?
      @matches = @matches.where("location LIKE ?", "%#{params[:search][:location]}%") if params[:search][:location].present?
      @matches = @matches.where(home_team_id: params[:search][:home_team_id]) if params[:search][:home_team_id].present?
      @matches = @matches.where(away_team_id: params[:search][:away_team_id]) if params[:search][:away_team_id].present?
      if params[:search][:start_date].present? && params[:search][:end_date].present?
        @matches = @matches.where(date: params[:search][:start_date]..params[:search][:end_date])
      end
    end
  end

  def show
  end

  def new
    @match = Match.new
    @teams = Team.all
  end

  def create
    @match = Match.new(match_params)
    if @match.save
      redirect_to @match, notice: 'Match was successfully created.'
    else
      @teams = Team.all
      render :new
    end
  end

  def edit
    @teams = Team.all
  end

  def update
    if @match.update(match_params)
      redirect_to @match, notice: 'Match was successfully updated.'
    else
      @teams = Team.all
      render :edit
    end
  end

  def destroy
    @match.destroy
    redirect_to matches_url, notice: 'Match was successfully destroyed.'
  end

  private

  def set_match
    @match = Match.find(params[:id])
  end

  def match_params
    params.require(:match).permit(:date, :location, :home_team_id, :away_team_id, :score_team1, :score_team2)
  end
end
