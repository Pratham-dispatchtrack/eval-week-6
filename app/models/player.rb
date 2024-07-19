class Player < ApplicationRecord
  belongs_to :team
  validates :name, presence: true
  validates :position, presence: true
  validates :roles, presence: true
  validates :age, numericality: { greater_than: 0 }
  validates :is_captain, presence: true
  validates :is_active, presence: true


  
end
