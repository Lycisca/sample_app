
#Aunque tengamos la misma función definida en el helper de la app, es conveniente que RSpec tenga sus propias funciones
  
def full_title(page_title)
     base_title = "Rails"

     if page_title.empty?
        base_title
     else
        "#{base_title} | #{page_title}"
     end

  end
