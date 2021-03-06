class PrimecategoriesController < ApplicationController

  before_action :signed_in
  
  
  def show
  end

  def edit
    @pcategory = Primecategory.find(params[:id])
  end
  
  def update
    @pcategory = Primecategory.find(params[:id])
 
    if @pcategory.update(primecategory_params)
      redirect_to new_primecategory_path
    else
      render 'edit'
    end
  end
 
  def new
    @pcategory = Primecategory.new
    @pcategories = Primecategory.find(:all)
  end
  
  def create
    @pcategory = Primecategory.new(primecategory_params)
 
    if @pcategory.save
      redirect_to new_primecategory_path
    else
      render 'new'
    end
  end
  
  def destroy
    @pcategory = Primecategory.find(params[:id])
    @pcategory.destroy
 
    redirect_to new_primecategory_path
  end
 
 private
  def primecategory_params
    params.require(:primecategory).permit(:name)
  end
  
  def signed_in
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end
end
