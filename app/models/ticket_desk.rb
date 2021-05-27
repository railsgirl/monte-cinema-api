class TicketDesk < ApplicationRecord
  has_many :reservations
  validates :place, presence: true
end
