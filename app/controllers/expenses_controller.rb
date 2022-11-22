class ExpensesController < ApplicationController
  before_action :set_expense, only: %i[show edit update destroy]
  before_action :set_category, only: %i[index show new edit update create destroy]
  load_and_authorize_resource

  def index
    
  end

  def new
    @expense << category
  end

  def create
    @expense = Expense.create(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to categories_url, notice: 'Category was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  private 

  def category_params
    params.require(:expense).permit(:name, :icon, category.id[])
  end
end
