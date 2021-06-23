# frozen_string_literal: true

class Client < ApplicationRecord
  has_many :reservations, dependent: :destroy
  validates :name, :email, presence: true
end
