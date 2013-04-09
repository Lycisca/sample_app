require 'spec_helper'

describe "StaticPages" do

   let(:base_title) {Rails} 
   subject {page} #decimos que el sujeto para todos los ejemplos es la pagina que visite, aunque solo lo vamos a utilizar para Home y Help, los otros están con el modelo old
                  #Al definir el sujeto, mas abajo utilizamos el método 'it' el cual ya lo referimos a la página, la cual es sujeto.

   describe "Home Page" do
      before {visit root_path} #visita root_path antes de cada ejemplo para el test
      
      it {should have_selector('h1', text: 'Sample App')}
      it {should have_selector('title', text: full_title('Home'))}
    
   end
  
   describe "Help Page" do
      before {visit help_path}

      it {should have_selector('h1', text: 'Help')}
      it {should have_selector('title', text: full_title('Help'))}
      
   end
  
  # Estos dos test utilizan lo que antes estaba, ed, sin la funcion full_tittle y utilizando la funcion let definida al principio del documento.

   describe "About Page" do
     it "Tiene que contener 'About Us'" do
    	visit about_path
    	page.should have_selector('h1', :text => 'About Us')
      
     end

     it "should have the right title" do
      visit about_path
      page.should have_selector('title', :text => "#{base_title} | About")
     end

   end

   describe "Pagina de Contacto" do
      it "Debe de contener la palabra 'Contacto'" do
         visit contact_path
         page.should have_content('Contact')
      end
   
      it "Debe contener el titulo Rails | Contact" do
         visit contact_path
         page.should have_selector('title', :text => "#{base_title} | Contact")
      end
   end
         
     


end
