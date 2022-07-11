class Product < ApplicationRecord
    validates :title, presence: true,
    uniqueness: {case_sensitive: false} 

    validates :price, numericality: {greater_than: 0}
    validates :description, presence: true, length: {mininum: 10}
end
