require 'rails_helper'

RSpec.describe UsersController, type: :system do
  describe "GET #new" do 
    it "shows Signup" do
      visit "/register"
      expect(page).to have_text("Signup")
    end
  end
end

