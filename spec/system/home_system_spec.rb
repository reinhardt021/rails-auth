require 'rails_helper'

RSpec.describe HomeController, type: :system do
  describe "GET #index" do 
    it "shows Welcome Home :)" do
      visit "/"
      expect(page).to have_text("Welcome Home :)")
    end
  end
end
