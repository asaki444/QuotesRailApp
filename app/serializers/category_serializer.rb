class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :category_quote
  has_many :quotes, through: :category_quotes
end
