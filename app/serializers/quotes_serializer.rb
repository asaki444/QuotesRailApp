class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :text, :author
  has_many :category_quotes
end
