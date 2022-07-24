class User < ApplicationRecord
    scope :search, ->(search_term) { where("first_name ILIKE ? OR last_name ILIKE ? OR email ILIKE ?", "%#{search_term}%", "%#{search_term}%", "%#{search_term}%")}

    has_secure_password

    has_many :products, dependent: :nullify
    has_many :reviews, dependent: :nullify

    def full_name
        self.first_name + " " + self.last_name
    end

end
