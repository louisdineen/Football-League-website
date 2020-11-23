class Table < ApplicationRecord
  validates :name, presence: true
  validates :wins, presence: true
  validates :draws, presence: true
  validates :losses, presence: true
  validates :gf, presence: true
  validates :ga, presence: true
end
