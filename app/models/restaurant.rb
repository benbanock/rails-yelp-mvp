class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy, inverse_of: :restaurant #valider avec une association
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: {in: CATEGORIES, allow_nil: false}
end
