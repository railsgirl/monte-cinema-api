# frozen_string_literal: true

class CinemaHall < ApplicationRecord
  has_many :seances, dependent: :destroy
  validates :name, :seats, presence: true
end
