class ArticlesController < ApplicationController

	layout 'news-show'

	def index
	end

	def show


    @pcategories = Primecategory.all
    
    @category = Subcategory.find(params[:id])

	end

	def edit
	end

	def new
	end
end
