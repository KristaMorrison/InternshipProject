require 'rails_helper'

RSpec.feature "Admins", type: :feature do
  describe "As an admin I can register" do
    it "should allow me to enter my information" do
      visit "/admins/sign_in"
      expect(page).to have_content("first name")
    end
  end
end
