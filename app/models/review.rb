class Review < ApplicationRecord
  belongs_to :product

  validates :rating, presence: true, numericality: {minimum: 1, maximum: 5}
  # validates :rating, presence: :true, numericality: {greater_than: 0, less_than: 6}
end
