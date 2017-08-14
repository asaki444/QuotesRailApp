class Quote < ApplicationRecord
    validates :text, :author, presence: true
    has_one :author
    has_many :category_quotes
    has_many :categories, through: :category_quotes
    accepts_nested_attributes_for :categories
    accepts_nested_attributes_for :author
    def categories_attributes=(categories_attributes)
        if categories_attributes["0"]["name"] != ""
            category = Category.find_or_create_by(categories_attributes["0"])
            self.categories << category if !self.categories.include?(category)
        end
    end
    def author_attribute=(author_attribute)
        if author_attribute["0"]["name"] != ""
            author = Author.find_or_create_by(categories_attributes["0"])
            self.author = author
        end
    end
end
