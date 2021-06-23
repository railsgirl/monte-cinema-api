class Reservation < ApplicationRecord
  STATUSES = ["booked", "paid", "cancelled"]
  
  belongs_to :seance
  belongs_to :client
  belongs_to :ticket_desk
  has_many :tickets, dependent: :destroy

  validate :has_valid_status

  def has_valid_status
    if STATUSES.exclude?(status)
      errors.add(:status, "invalid status")
    end
  end
end
