require 'rails_helper'

RSpec.describe ProfilesController, type: :controller do

  describe "GET #new" do
    it "returns http Found" do
      get :new
      expect(response).to have_http_status(:found)
    end
  end

  describe "GET #create" do
    it "returns http Found" do
      get :new
      expect(response).to have_http_status(:found)
    end
  end

  describe "GET #edit" do
    it "returns http Found" do
      get :new
      expect(response).to have_http_status(:found)
    end
  end

  describe "GET #update" do
    it "returns http Found" do
      get :new
      expect(response).to have_http_status(:found)
    end
  end
end
