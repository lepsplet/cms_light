class SubcategoriesController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def new
    @category = Category.find(params[:id])
    @subcategory = @category.subcategories.build
  end
end
