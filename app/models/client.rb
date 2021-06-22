class Client < ApplicationRecord
  has_many :reservations, dependent: :destroy
  validates :name, :email, presence: true
end
