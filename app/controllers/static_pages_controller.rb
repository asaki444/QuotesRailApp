class StaticPagesController < ApplicationController
  def home
    @quotes = Quote.all
  end
end
