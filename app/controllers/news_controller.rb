class NewsController < ApplicationController
  
  layout 'news'
  
  def index
    @pcategories = Primecategory.all
    

    
  end

  def show
  end
end
