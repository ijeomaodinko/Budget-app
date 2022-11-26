require 'rails_helper'

RSpec.describe CategoriesController, type: :request do
  describe "GET './index' page" do
    before(:all) do
      @route = get '/categories'
    end

    it 'it should return a valid status' do
      expect(@route).to eq(302)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/categories/show'
      expect(response).to have_http_status(302)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/categories/new'
      expect(response).to have_http_status(302)
    end
  end
end
