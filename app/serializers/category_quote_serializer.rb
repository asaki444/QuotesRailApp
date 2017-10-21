class CategoryQuoteSerializer < ActiveModel::Serializer
  attributes :id, :quote_id, :category_id
  belongs_to :category
  belongs_to :quote
end
