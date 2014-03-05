class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
  end

  def edit

    @category = Category.find(params[:id])
  end
  
  def update
    
    @category = Category.find(params[:id])
    
 
    if @category.update(category_params)
      redirect_to categories_path
    else
      render 'edit'
    end
  end
 
  def new
    @pcategory = Primecategory.find(params[:id])
    @category = @pcategory.categories.build
  end
  
  def create
    @pcategory = Primecategory.find(params[:id])
    @category = @pcategory.categories.build(category_params)
 
    if @category.save
      redirect_to new_category_path(id: @pcategory.id)
    else
      render 'new'
    end
  end
  
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
 
    redirect_to new_category_path
  end
 
 private
  def category_params
    params.require(:category).permit(:name)
  end
end
