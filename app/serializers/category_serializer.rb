class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :formatted_quotes
   
  def formatted_quotes
    object.category_quotes.map do |cq|
      {
        id: cq.quote.id,
        author: cq.quote.author,
        text: cq.quote.text
      }
    end
  end
end
