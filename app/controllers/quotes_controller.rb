require 'pry'
class QuotesController < ApplicationController

    def index
       @quotes = current_user.quotes if !check   
    end
    
    def new
        @quote = Quote.new if !check
    end
    
    def edit
        @quote = Quote.find_by(id: params[:id]) if !check
    end
    
    def create
        quote = Quote.create(quote_params)
        redirect_to quote_path(quote)
    end

    def show 
        @quote = Quote.find_by(id: params[:id])
    end 

    def create
        quote = Quote.create(quote_params)
        redirect_to quote_path(quote)
    end
 
    def update
        quote = Quote.find_by(params[:id])
        quote.update(quote_params)
        redirect_to quote_path(quote)
    end
    private

    def quote_params
      params.require(:quote).permit(:text, :author, categories_attributes: [:name], category_ids: [])
    end
end
