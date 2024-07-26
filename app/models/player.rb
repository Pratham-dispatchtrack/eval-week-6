class Player < ApplicationRecord
  before_destroy :is_he_a_captain?
  after_save :players_count

  default_scope { where(is_active: true) }
  scope :particular_roles, -> { where(roles: 'batsman') }

  belongs_to :team
  validates :name, presence: true
  validates :position, presence: true
  validates :roles, presence: true
  validates :age, numericality: { greater_than: 0 }
  # validates :is_captain, presence: true
  validates :is_active, presence: true
  validates :team_id, presence: true

  def is_he_a_captain?
    if is_captain?
      self.errors.add(:base, "Can't be destroy because he is captain")
      throw :abort
    end
  end
  
end

