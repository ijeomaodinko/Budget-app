require 'rails_helper'

RSpec.describe ExpensesController, type: :request do
  describe "GET './index' page" do
    before(:all) do
      @route = get '/expenses/index'
    end

    it 'it should return a valid status' do
      expect(@route).to eq(302)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/expenses/new'
      expect(response).to have_http_status(302)
    end
  end
end
