class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :text, :author
  has_many :category_quotes, serializer: CategoryQuoteSerializer
  has_many :categories, through: :category_quotes, serializer: CategorySerializer
end
