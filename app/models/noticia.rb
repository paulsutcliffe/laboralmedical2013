class Noticia < ActiveRecord::Base
  attr_accessible :contenido, :imagen, :subtitulo, :titulo
end
