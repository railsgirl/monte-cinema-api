class Reservation < ApplicationRecord
  belongs_to :seance
  belongs_to :client
  belongs_to :ticket_desk
  has_many :tickets, dependent: :destroy
end
