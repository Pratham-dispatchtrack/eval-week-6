class Team < ApplicationRecord

    scope :team_from_country, -> { where(country: 'England') }
    scope :founded_in, -> { where(founded: 1971 ) }


    

    has_many :players
    validates :name, presence: true
    validates :country, presence: true
    validates :description, presence: true
    validates :founded, numericality: { greater_than: 1901 }

end
