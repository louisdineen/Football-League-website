class Match < ApplicationRecord
  validates :home, presence: true
  validates :away, presence: true
  validates :time, presence: true
end
