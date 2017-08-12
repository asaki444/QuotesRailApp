class StaticPagesController < ApplicationController
  def home
    @quotes = Quotes.all
  end
end
