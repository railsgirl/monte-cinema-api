# frozen_string_literal: true

class Reservation < ApplicationRecord
  STATUSES = %w[booked paid cancelled].freeze

  belongs_to :seance
  belongs_to :client
  belongs_to :ticket_desk
  has_many :tickets, dependent: :destroy

  validate :has_valid_status

  def has_valid_status
    errors.add(:status, 'invalid status') if STATUSES.exclude?(status)
  end
end
