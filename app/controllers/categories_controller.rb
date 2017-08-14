require 'pry'
class CategoriesController < ApplicationController
    def new
        @quote = Quote.find_by(id: params[:quote_id])
        @category = Category.new
    end

    def create
        category = Category.create(category_params)
        redirect_to category_path(category)
    end

    def index
        quote = Quote.find_by(id: params[:quote_id])
        @categories = quote.categories
    end

    private
    
    def category_params
        params.require(:category).permit(:name, :user_id, :quote_id)
    end
end
