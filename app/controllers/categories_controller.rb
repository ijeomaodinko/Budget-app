class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show edit update destroy]
  load_and_authorize_resource

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to categories_url, notice: 'Category was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def show; end

  private

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
