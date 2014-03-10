class NewsController < ApplicationController
  
  layout 'news'
  
  def index
    
    if user_signed_in?
      redirect_to new_primecategory_path
    end
    
  end

  def show
  end
end
