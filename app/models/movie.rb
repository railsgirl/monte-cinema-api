class Movie < ApplicationRecord
  has_many :seances, dependent: :destroy
  validates :title, :duration, :genre, presence: true
end
