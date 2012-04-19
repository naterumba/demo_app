require 'spec_helper'

describe "Home page" do

  it "should have the content 'Sample App'" do
    visit '/static_pages/home'
    page.should have_content('Sample App')
  end

  it "should have the titles 'home'" do
    visit '/static_pages/home'
    page.should have_selector('title',
                              text: "Sample App | Home")
  end
end

describe "Help page" do

  it "should have the content 'Help'" do
    visit '/static_pages/help'
    page.should have_content('Help')
  end

  it "should have the titles 'help'" do
    visit '/static_pages/help'
    page.should have_selector('title',
                              text: "Sample App | Help")
  end
end

describe "About page" do

  it "should have the content 'About Us'" do
    visit '/static_pages/about'
    page.should have_selector('h1',
                              text: 'About Us')
  end

  it "should have the titles 'about us'" do
    visit '/static_pages/about'
    page.should have_selector('title',
                              text: "Sample App | About Us")
  end
end
