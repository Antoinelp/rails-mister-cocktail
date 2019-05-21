class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
  belongs_to :ingredient
  belongs_to :cocktail
end
