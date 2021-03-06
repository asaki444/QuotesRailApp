class QuotesController < ApplicationController

    def home
       @quotes = current_user.quotes if !check
       render json: @quotes
    end

    def index
       @quotes = Quote.all
       render json: @quotes
    end
    
    def new
        @error = params[:error]
         @quote = Quote.new if !check
    end
    
    def edit
        @quote = Quote.find_by(id: params[:id]) if !check
    end
    
    def show 
        @quote = Quote.find_by(id: params[:id]) 
        @categories = @quote.categories.order("name ASC")
        respond_to do |f|
        f.html {render :show}
        f.json {render json: @quote}
        end
    end 

    def create
        quote = Quote.new(quote_params)
        if quote.save
        redirect_to quote_path(quote)
        else
        @error = quote.errors.full_messages
        redirect_to new_quote_path(:error => @error )
        end
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
