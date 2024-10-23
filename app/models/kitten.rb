class Kitten < ApplicationRecord
  validates :name, :age, :cuteness, :softness, presence: true
  validates :age, numericality: { greater_than: 0 }
  validates :cuteness, :softness, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }

  validate do |kitten|
    if kitten.cuteness == 10 && kitten.softness == 10
      kitten.errors.add(:base, "This kitten is too perfect to exist.")
    end
  end
end
