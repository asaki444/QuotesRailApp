class CategoriesController < ApplicationController
    def new
        @quote = Quote.find_by(id: params[:quote_id])
        @category = Category.new
    end

    def index
        @quote = Quote.find_by(id: params[:quote_id])
        @categories = @quote.categories
    end
    
    def show
        @category = Category.find_by(id: params[:id])
    end

    def edit
        @category = Category.find_by(params[:id])
        @quote = Quote.find_by(id: params[:quote_id])
    end

    def create
        category = Category.find_or_create_by(name: category_params[:name])
        category_quote = CategoryQuote.find_or_create_by(category_id: category.id, quote_id: category_params["quote_id"])
        redirect_to quote_path(category_params["quote_id"])
    end
    
    def update
        category = Category.update(category_params)
        redirect_to category_path(category)
    end
    
    private
    
    def category_params
        params.require(:category).permit(:name, :user_id, :quote_id)
    end
end
