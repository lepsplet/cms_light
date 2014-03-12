class CategoriesController < ApplicationController
  
  before_action :signed_in
  
  def index
    
  end

  def show
  end

  def edit
     @category = Category.find(params[:id])
  end
  
  def update
    
    @category = Category.find(params[:id])
   
    if @category.update(category_params)
      redirect_to action: 'new', id: @category.primecategory_id
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
 
    redirect_to action: 'new', id: @category.primecategory_id
  end
 
 private
  def category_params
    params.require(:category).permit(:name)
  end
  
    def signed_in
      unless user_signed_in?
        redirect_to new_user_session_path
      end
    end
end
