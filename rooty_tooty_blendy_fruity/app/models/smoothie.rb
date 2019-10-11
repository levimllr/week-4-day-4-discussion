class Smoothie < ApplicationRecord
  has_many :smoothie_ingredients
  has_many :ingredients, through: :smoothie_ingredients
end
