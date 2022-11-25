require 'rails_helper'

RSpec.describe 'Expenses page', type: :feature do
    before(:each) do
        DatabaseCleaner.clean_with(:truncation)
        @user = User.new(name: 'enagr', email: 'enga@example.com', password: 'thanks',
        password_confirmation: 'thanks')
        visit user_session_path
        fill_in 'Email', with: @user.email.to_s
        fill_in 'Password', with: @user.password.to_s
        find("input[type='submit']").click

    
        @category = Category.create(name: 'first category', icon: 'https://images.pexels.com/photos/39317/chihuahua-dog-puppy-cute-39317.jpeg?auto=compress&cs=tinysrgb&w=400', user_id: @user.id)
        @expense = Expense.create(name: 'first expense', amount: 1800, user_id: @user.id)
        @category_expense = CategoryExpense.create(category_id: @category.id, expense_id: @expense.id)
        visit category_expenses_path(@category.id)
      end

  it 'should show the expense name' do
    expect(page).to have_content('first expense')
  end

  it 'should show the category name' do
    expect(page).to have_content('first category')
  end


  it 'should show expense amount' do
    expect(page).to have_content(1800)
  end

  it 'should show add a new expense' do
    expect(page).to have_content('Add Expense')
  end

  it 'should navigate to form page' do
    click_link 'Add Expense'
    expect(current_path).to eq(new_category_expense_path(@category))
  end
end