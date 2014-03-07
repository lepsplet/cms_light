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
  
  def create
    @category = Category.find(params[:id])
    @subcategory = @category.subcategories.build(subcategory_params)
 
    if @subcategory.save
      redirect_to new_subcategory_path(id: @category.id)
    else
      render 'new'
    end
  end
  
end

 
 private
  def subcategory_params
    params.require(:subcategory).permit(:name)
  end

