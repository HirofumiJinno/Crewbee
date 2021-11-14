class Rower < ApplicationRecord
  has_many :participations
  has_many :practices, through: :participations
end
