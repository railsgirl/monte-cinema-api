class Client < ApplicationRecord
  has_many :reservations, dependent: :destroy
end
