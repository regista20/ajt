require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'AJT'" do
      visit '/static_pages/home'
      expect(page).to have_content('AJT')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("AJT")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do 
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("AJT | About Us")
    end
  end

  describe "FAQ page" do

    it "should have the content 'FAQ'" do
      visit '/static_pages/faq'
      expect(page).to have_content('FAQ')
    end

    it "should have the title 'FAQ'" do
      visit '/static_pages/faq'
      expect(page).to have_title("AJT | FAQ")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("AJT | Contact")
    end
  end
end