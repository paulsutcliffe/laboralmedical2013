module ApplicationHelper


  # ENCABEZADO
  def encabezado(titulo, imagen, icono, btn)
    "#{'
      <div class="encabezado">
        <div class="container">
          <div class="region">
            <div class="region-title">
              <h2 class="title">' + titulo + '<img src="' + icono + '" /></h2>' +
                if (btn)
                  btn_back
                else
                  ''
                end  + '
            </div>
          </div>
        </div>
        <img src="' + imagen + '" class="title-pic"/>
      </div>'}".html_safe
  end

  def btn_back
    
      '<a href="javascript:history.back(-1)" class="btn-back">< Regresar</a>'.html_safe

  end



  # MENÚ HELPERS
  # list menu maker
  def menu_li(current_page, current_controller, current_url)
    content_tag(:li, :class => lavalamp(current_controller).to_s) do
      link_to_unless_current current_page, current_url do
        content_tag(:span, current_page)
      end
    end
  end

  # extension of menu maker wich applies lavalamp class to the current controller
  def lavalamp(current_controller)
    if params[:controller] == "#{current_controller}"
      'selectedLava' 
    end
  end

  


 # def paragraph(post, length)
 #   "#{simple_format(truncate(post, :length => length))}"
 # end

  def paragraph(text)
    "#{sanitize(simple_format(text), :tags => %w(p i br b))}".html_safe
  end

  def paragraph_truncate(text, length)
    "#{sanitize(simple_format(truncate(text, :length => length)), :tags => %w(p i br b))}".html_safe
  end





end
