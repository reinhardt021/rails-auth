require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /register" do
    it "returns http success" do
      get "/register"
      expect(response).to have_http_status(:success)
    end
  end

  #describe "GET /create" do
    #it "returns http success" do
      #get "/users/create"
      #expect(response).to have_http_status(:success)
    #end
  #end

end
