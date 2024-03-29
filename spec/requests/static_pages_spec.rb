require 'spec_helper'

describe "StaticPages" do

  let(:test_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the right title" do 
       visit '/static_pages/home'
       page.should have_selector('title',
                         :text => "#{test_title}")
    end

    it "should not have a custom page title" do
       visit "/static_pages/home"
       page.should_not have_selector('title', 
                        :text => '| Home')
    end

  end

  describe "Help page" do

    it "should have the content 'Help'" do 
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    
    it "should have the right title" do 
       visit '/static_pages/help'
       page.should have_selector('title',
                         :text => "#{test_title} | Help")
    end

  end

  describe "About page" do 

    it "should have the content 'About Us'" do
       visit '/static_pages/about'
       page.should have_content('About Us')
       page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the right title" do 
       visit '/static_pages/about'
       page.should have_selector('title',
                         :text => "#{test_title} | About Us")
    end

  end


  describe "Contact page" do

    it "should have the content 'Contact'" do
       visit '/static_pages/contact'
       page.should have_content('Contact')
       page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the right title" do
       visit '/static_pages/contact'
       page.should have_selector('title',
                         :text => "#{test_title} | Contact")
    end

  end

end
