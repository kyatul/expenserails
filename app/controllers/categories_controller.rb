class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
  end

  def create
    @category = Category.new(category_params)

    @category.save
    redirect_to categories_path
  end

  def show
    @category = Category.find(params[:id])
  end

  def edit
  end

  private

  def category_params
    params.require(:category).permit(:name, :budget)
  end
end
