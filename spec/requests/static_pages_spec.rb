require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    before do
        visit '/static_pages/home'
    end
    it "should have the content 'Sample App'" do
      page.should have_selector('h1',:text => 'Sample App')
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
  end


  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => "About Us")
    end
  end

end
