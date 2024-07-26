class Match < ApplicationRecord
    # scope :after_date, -> { where('date >= ?'), Date.current }
    # scope :overlapping, -> (start_date, end_date) { 
    #     includes(:date).where(start_date.to_date, end_date.to_date)
    #   }

    belongs_to :home_team, class_name: 'Team'
    belongs_to :away_team, class_name: 'Team'

    validates :date, presence: true
    validates :location, presence: true
    validates :home_team_id, presence: true
    validates :away_team_id, presence: true
end

