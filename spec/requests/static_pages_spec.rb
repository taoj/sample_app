require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
    
    it "should not have a custom apge title" do
	visit '/static_pages/home'
    	expect(page).not_to have_title('| Home');
    end

  end

  describe "Help Page" do
    it "should have the content 'help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do
    it "should have content 'About us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
     end
  end

  describe "Contact page" do
    it "should have contact 'Contact'" do
       visit '/static_pages/contact'
       expect(page).to have_content('Contact')
    end

    it "should have title 'Contact'" do
      visit "/static_pages/contact"
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact");
    end
  end
 






end
