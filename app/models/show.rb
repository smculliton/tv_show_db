class Show < ApplicationRecord
  validates_presence_of :name, :genre1
  validates :rating, numericality: true
end