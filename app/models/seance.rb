# frozen_string_literal: true

class Seance < ApplicationRecord
  belongs_to :movie
  belongs_to :cinema_hall
  validates :start_time, presence: true
end
