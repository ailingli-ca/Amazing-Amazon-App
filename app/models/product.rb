class Product < ApplicationRecord
    validates :title, presence: true,
    uniqueness: {case_sensitive: false} 

    validates :price, numericality: {greater_than: 0}
    validates :description, presence: true, length: {mininum: 10}

    # before_validation :set_default_price, :capitalize_title
    before_save :capitalize_title

    # scope :search, ->(query) { where("title ILIKE '%#{query}%' or description ILIKE '%#{query}'")}
    scope :search, ->(query) { where("title ILIKE ? OR description ILIKE ?", "%#{query}%", "%#{query}%") }

    # validates :title, exclusion: { in: %w(apple microsoft sony), message: "%{value} is reserved." }
    validates_exclusion_of :title, in: %w( apple microsoft sony ), message: "please use a different title"
    
    private

    def set_default_price
        self.price || = 1
    end

    def capitalize_title
        self.title.capitalize!
    end


end
