class Seance < ApplicationRecord
  belongs_to :movie
  belongs_to :cinema_hall
  validates :date, :time, presence: true
end
