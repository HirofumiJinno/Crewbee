class Practice < ApplicationRecord
  has_many :participations
  has_many :rowers, through: :participations
  has_many :boat_uses
  has_many :boats, through: :boat_uses
end
