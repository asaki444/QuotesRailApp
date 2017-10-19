class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :text, :author
end
