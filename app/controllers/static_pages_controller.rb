class StaticPagesController < ApplicationController
  def home
    @quotes = Quote.all
    if @quotes != []
      @relatable = Quote.find_by(id: CategoryQuote.most_categories)
    end
  end
end
