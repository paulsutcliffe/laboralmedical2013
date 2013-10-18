class Noticia < ActiveRecord::Base
  attr_accessible :contenido, :imagen, :subtitulo, :titulo

  mount_uploader :imagen, ImagenUploader
end
