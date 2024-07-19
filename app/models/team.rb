class Team < ApplicationRecord
    has_many :players
    validates :name, presence: true
    validates :country, presence: true
    validates :description, presence: true
    validates :founded, numericality: { greater_than: 1901 }




end
