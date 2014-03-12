class NewsController < ApplicationController
  
  layout 'news'
  
  def index
    @pcategories = Primecategory.all
    
    @categories = Category.all
    
  end

  def show
  end
end
