module ApplicationHelper

  # Funcion "full_title" a la cual la pasamos el parámetro (page_title) que en nuestro caso va a ser "provide(:title)",
  # si este parámetro está vacio, nos devuelve la base del titulo que es "Rails", si tiene algo, nos devuelve la base
  # del titulo y el titulo de la página.

  def full_title(page_title)
          base_title = "Rails"

          if page_title.empty?
                  base_title
          else
                  "#{base_title} | #{page_title}"
          end

  end
     
end
