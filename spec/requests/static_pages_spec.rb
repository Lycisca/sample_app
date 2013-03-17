require 'spec_helper'

describe "StaticPages" do

   let(:base_title) {Rails}
  
   describe "Home Page" do
     it "should have the content 'Sample App'" do
    	visit '/static_pages/home'
    	page.should have_selector('h1', :text => 'Sample App')
     end
  

     it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "#{base_title} | Home")
     end

   end
  
   describe "Help Page" do
     it "should have the content 'Help'" do
    	visit '/static_pages/help'
    	page.should have_selector('h1', :text => 'Help')
      
     end
  
  
     it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "#{base_title} | Help")
     end
  
   end
  
  
   describe "About Page" do
     it "Tiene que contener 'About Us'" do
    	visit '/static_pages/about'
    	page.should have_selector('h1', :text => 'About Us')
      
     end

     it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "#{base_title} | About")
     end

   end

   describe "Pagina de Contacto" do
      it "Debe de contener la palabra 'Contacto'" do
         visit '/static_pages/contact'
         page.should have_content('Contact')
      end
   
      it "Debe contener el titulo Rails | Contact" do
         visit '/static_pages/contact'
         page.should have_selector('title', :text => "#{base_title} | Contact")
      end
   end
         
     


end
