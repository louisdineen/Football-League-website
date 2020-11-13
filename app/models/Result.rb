class Result < ApplicationRecord
  validates :home, presence: true
  validates :hg, presence: true
  validates :ag, presence: true
  validates :away, presence: true
  validates :time, presence: true
end
