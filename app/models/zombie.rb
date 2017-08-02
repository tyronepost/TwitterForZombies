class Zombie < ApplicationRecord
  has_one :brain, dependent: :destroy
  has_many :assignments
  has_many :roles, through: :assignments

  scope :rotting, -> { where(rotting: true) }
  before_save :make_rotting

  def make_rotting
    self.rotting = true if age > 20
  end
end
