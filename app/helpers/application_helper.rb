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

  


  # admin controls
  def admin_controls(edit_text, edit_link, direction)
    if current_admin
      "#{'
        <div class="admin-controls">
        <div class="btn-group ' + 
          if (direction === 'up')
            'dropup'
          else
           nil.to_s 
          end  + '">


        <a class="btn btn-edit btn-sm">' + edit_text + '</a> 
       

        <div class="btn-group">
          <div class="dropdown">
            <a class="btn btn-default btn-sm" role="button" data-toggle="dropdown" data-target="#" href="/page.html">
               <span class="caret"></span>
            </a>
 
            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
              <li role="presentation"><a role="menuitem" tabindex="-1" href="' + edit_link + '">' + edit_text + '</a></li>
              <li role="presentation" class="li-delete"></li>
            </ul>

          </div>
        </div>
      </div>
      </div>'}".html_safe
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
