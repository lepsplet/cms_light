class ArticlesController < ApplicationController
  def index
    @categories = Primecategory.all
  end

  def show
  end

  def edit
  end

  def new
  end
end
