require 'rails_helper'

RSpec.describe UsersController, type: :system do
  describe "GET #new" do 
    it "shows Sign Up" do
      visit "/register"
      expect(page).to have_text("Sign Up")
    end
  end
end

