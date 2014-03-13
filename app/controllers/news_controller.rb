class NewsController < ApplicationController
  
  layout 'news'
  
  def index
    @pcategories = Primecategory.all
    

    
  end

  def show
    @pcategories = Primecategory.all
    
    @category = Category.find(params[:id])
    @articles = @category.subcategories
    
  end
  
  
  def article
    @article = @Subcategory.find(params[:id])
    
  end
  
  
end
