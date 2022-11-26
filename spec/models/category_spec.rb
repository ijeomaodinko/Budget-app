require 'rails_helper'

RSpec.describe Category, type: :model do
  before(:each) do
    @user = User.new(name: 'enagr', email: 'enga@example.com', password: 'thanks',
                     password_confirmation: 'thanks')
    @category = Category.create(name: 'first category', icon: 'Icon1', user_id: @user.id)
  end

  it 'should return category name' do
    expect(@category.name).to eq('first category')
  end

  it 'should return icon of category' do
    expect(@category.icon).to eq('Icon1')
  end
end
