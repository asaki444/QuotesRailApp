class CategoryQuote < ApplicationRecord
    belongs_to :category
    belongs_to :quote
    def self.most_categories
        if !self.all.empty?
            self.group(:quote_id).count.first[0]
        end
    end
end
