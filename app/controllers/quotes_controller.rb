class QuotesController < ApplicationController
    
    def new
        @quote = Quote.new
    end
    
    def create
        quote = Quote.create(quote_params)
        redirect_to quote_path(quote)
    end

    def show 
        @quote = Quote.find_by(:id params[:id])
    end 

    def create
        quote = Quote.create(quote_params)
        redirect_to quote_path(quote)
    end
    private

    def quote_params
      params.require(:quote).permit(:name, category_attributes: [:name], category_ids: [])
    end
end
