require 'rails_helper'

RSpec.describe SessionsController, type: :system do
  describe "GET #new" do 
    it "shows Login" do
      visit "/login"
      expect(page).to have_text("Login")
    end
  end
end

