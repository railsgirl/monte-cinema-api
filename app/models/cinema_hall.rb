class CinemaHall < ApplicationRecord
  has_many :seances, dependent: :destroy
end
