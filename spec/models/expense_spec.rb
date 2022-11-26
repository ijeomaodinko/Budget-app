require 'rails_helper'

RSpec.describe Expense, type: :model do
  before(:each) do
    @user = User.new(name: 'enagr', email: 'enga@example.com', password: 'thanks',
                     password_confirmation: 'thanks')
    @expense = Expense.new(name: 'first expense', amount: 10)
  end

  it 'should return name of user' do
    expect(@expense.name).to eq('first expense')
  end

  it 'should return the amount' do
    expect(@expense.amount).to eq(10)
  end
end
