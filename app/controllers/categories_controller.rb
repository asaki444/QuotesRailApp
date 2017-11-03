class CategoriesController < ApplicationController
    
    def new
        @quote = Quote.find_by(id: params[:quote_id])
        @category = Category.new
    end
    
    def show
        @category = Category.find_by(id: params[:id])
        respond_to do |f|
        f.html {render :show}
        f.json {render json: @category}
        end
    end

    def index
        # @quote = Quote.find_by(id: params[:quote_id])
        # @categories = @quote.categories
        @categories = Category.all
        respond_to do |f|
        f.html {render :index}
        f.json {render json: @category}
        end
    end
    
    def edit
        @category = Category.find_by(params[:id])
        @quote = Quote.find_by(id: params[:quote_id])
        render json: @category, status: 201
    end

    def create
        category = Category.new(name: category_params["name"])
        category.save
        category_quote = CategoryQuote.new(category_id: category.id, quote_id: category_params["quote_id"])
        category_quote.save
        render json: category, status: 201
        # redirect_to category_path(category)
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
