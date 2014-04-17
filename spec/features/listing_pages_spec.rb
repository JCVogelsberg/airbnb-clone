require 'spec_helper'

describe "listing pages" do
  describe "new listing" do
    it "creates a new listing" do
      visit "/listings"
      click_link 'New listing'
      fill_in 'Address', :with => "123 Main"
      select("Central", :from => "listing_neighborhood")
      fill_in 'City', :with => "Portland"
      fill_in 'Price', :with => 900
      select("House", :from => "listing_home_type")
      fill_in 'Description', :with => "Lovely Home in Portlandia."
      click_button 'Create Listing'
      page.should have_content "Portland"
    end
  end


  describe "Sign up" do
    it "creates a new user" do
      visit "/listings"
      click_link "Sign up"
      fill_in 'Email', :with => "joebob@yahoo.com"
      fill_in 'Password', :with => "12345678"
      fill_in 'Password confirmation', :with => "12345678"
      click_button "Sign up"
      page.should have_content "Welcome! You have signed up successfully."
    end
  end


  describe "Login" do
    it "logs in an existing user" do
      visit "/listings"
      click_link "Sign up"
      fill_in 'Email', :with => "slomo@yahoo.com"
      fill_in 'Password', :with => "12345678"
      fill_in 'Password confirmation', :with => "12345678"
      click_button "Sign up"
      page.should have_content "Logged in as slomo@yahoo.com"


    end
  end

  describe "Logout" do
    it "logs out an existing user" do
      visit "/listings"
      click_link "Sign up"
      fill_in 'Email', :with => "slomo@yahoo.com"
      fill_in 'Password', :with => "12345678"
      fill_in 'Password confirmation', :with => "12345678"
      click_button "Sign up"
      click_link "Logout"
      page.should have_content "Signed out successfully."
    end
  end

end
























