class SubcategoriesController < ApplicationController
	
  layout :diffrent_layouts
  before_action :signed_in
  
  def index
	end

	def show
    @pcategories = Primecategory.all
    @all_categories = Category.all
    @category = @all_categories.subcategories.find(params[:id])
    @articles = @category.subcategories

    
	end

	def edit
		@subcategory = Subcategory.find(params[:id])
	end

	def update

		@subcategory = Subcategory.find(params[:id])

		if @subcategory.update(subcategory_params)
			redirect_to action: 'new', id: @subcategory.category_id
		else
			render 'edit'
		end
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

	def destroy
		@subcategory = Subcategory.find(params[:id])
		@subcategory.destroy

		redirect_to action: 'new', id: @subcategory.category_id
	end
end


private
  def subcategory_params
    params.require(:subcategory).permit(:name, :body)
  end

  def signed_in
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end
  
def diffrent_layouts
    case action_name
    when "show"
      "news-show"
    else
      "application"
    end

  
end


