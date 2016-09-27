class Recipe < ApplicationRecord
  belongs_to :cuisine
  belongs_to :food_type
  validates :name, :cuisine, :food_type, :ingredients, :steps, presence: true
end
