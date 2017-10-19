class StaticPagesController < ApplicationController
  def home
    @quotes = Quote.all
    @relatable = Quote.find_by(id: CategoryQuote.most_categories)
  end
end
