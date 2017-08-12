class Quote < ApplicationRecord
    has_many :category_quotes
    has_many :categories, through: :category_quotes
    accepts_nested_attributes_for :categories
end
