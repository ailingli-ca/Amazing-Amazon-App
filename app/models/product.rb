class Product < ApplicationRecord
    validates :title, presence: true,
    uniqueness: {case_sensitive: false} 

    validates :price, numericality: {greater_than: 0}
    validates :description, presence: true, length: {mininum: 10}

    # before_validation :set_default_price, :capitalize_title
    before_save :capitalize_title

    private

    def set_default_price
        self.price || = 1
    end

    def capitalize_title
        self.title.capitalize!
    end


end
