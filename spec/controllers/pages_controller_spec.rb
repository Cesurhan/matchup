require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #home" do
    it "returns http Found" do
      get :home
      expect(response).to have_http_status(:found)
    end
  end

end
