class Kitten < ApplicationRecord
  validates :name, :age, :cuteness, :softness, presence: true
  validates :age, numericality: { greater_than: 0 }
end
