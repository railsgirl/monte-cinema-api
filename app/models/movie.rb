class Movie < ApplicationRecord
  has_many :seances, dependent: :destroy
end
