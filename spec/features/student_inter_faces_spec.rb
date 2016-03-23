require 'rails_helper'

RSpec.feature "StudentInterFaces", type: :feature, js:true do
  describe "Student is able to log in with Linkedin" do
    it "goes to linkedin login page" do
      visit "/"
      expect(page).to have_content("Sign in with LinkedIn")
    end

    # Tests to make sure that it goes to the linkedin login page. Mozilla is req'd on the machine testing this for it to work with Selenium Webdriver
    it "goes to the linkedin login page" do
      visit "/"
      click_link "Sign in with LinkedIn"
      expect(page).to have_content("Sign in to LinkedIn and allow access")
    end
  end
end
