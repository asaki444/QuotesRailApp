class QuoteSerializer < ActiveModel::Serializer
  attributes :id,:text, :author, :formatted_categories
  
  
  def formatted_categories
    object.category_quotes.map do |cq|
      {
        id: cq.category.id,
        name: cq.category.name
      }
    end
  end
end
