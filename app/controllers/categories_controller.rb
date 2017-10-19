class CategoriesController < ApplicationController
    
    def new
        @quote = Quote.find_by(id: params[:quote_id])
        @category = Category.new
    end
    
    def show
        @category = Category.find_by(id: params[:id])
    end

    def index
        @quote = Quote.find_by(id: params[:quote_id])
        @categories = @quote.categories
    end
    
    def edit
        @category = Category.find_by(params[:id])
        @quote = Quote.find_by(id: params[:quote_id])
    end

    def create
        category = Category.create(name: category_params["name"])
        CategoryQuote.create(category_id: category.id, quote_id: category_params["quote_id"])
        redirect_to category_path(category)
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
