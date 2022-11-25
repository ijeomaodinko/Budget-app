require 'rails_helper'

RSpec.describe 'Categories page', type: :feature do
  before(:each) do
    DatabaseCleaner.clean_with(:truncation)
    @user = User.new(name: 'enagr', email: 'enga@example.com', password: 'thanks',
    password_confirmation: 'thanks')

    visit user_session_path
    fill_in 'Email', with: @user.email.to_s
    fill_in 'Password', with: @user.password.to_s
    find("input[type='submit']").click

    @category1 = Category.new(name: 'first category', icon: 'https://images.pexels.com/photos/39317/chihuahua-dog-puppy-cute-39317.jpeg?auto=compress&cs=tinysrgb&w=400',
                              user_id: 1)
    @category1.user_id = @user.id
    @category1.save
  end
  end