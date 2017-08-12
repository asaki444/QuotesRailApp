class Category < ApplicationRecord
    has_many :category_quotes
    has_many :quotes, through: :category_quotes
end
