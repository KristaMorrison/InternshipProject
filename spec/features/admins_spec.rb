require 'rails_helper'


RSpec.feature "Admins", type: :feature do
  describe "As an admin I can register" do
    it "should allow me to enter my information" do
      visit "/admins/new"
      expect(page).to have_content("First name")
    end

    it "should save all of my information to the database" do
      # register_admin fills out the sign up form and clicks submit.  Find at /spec/internship_test_helper.rb
      register_admin
      # once a user submits their information, we should be able to find the record in the database
      expect(Admin.find_by_email('bob@recruit.com')).not_to be_nil
    end
    # it "should direct me to my admin profile page" do
    #   register_admin
    #   expect(current_path).to eq("/admins/profile")
    # end
  end
end
