require 'rails_helper'


RSpec.feature "Admins", type: :feature do
  describe "As an admin I can register" do
    it "should allow me to enter my information" do
      visit "/admins/new"
      expect(page).to have_content("First name")
    end
    it "should save all of my information to the database" do
      register_admin
      expect(Admin.last).to be_a(Admin)
      expect(Admin.last.email).to eq('bob@recruit.com')

    end
  end
end
