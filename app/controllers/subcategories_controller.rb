class SubcategoriesController < ApplicationController
	def index
	end

	def show
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

