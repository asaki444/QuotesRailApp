class Quote < ApplicationRecord
    validates :text, :author, presence: true
    has_many :category_quotes
    has_many :categories, through: :category_quotes
 
    def categories_attributes=(categories_attributes)
        if categories_attributes["0"]["name"] != ""
            category = Category.find_or_create_by(categories_attributes["0"])
            self.categories << category
        end
    end
end
