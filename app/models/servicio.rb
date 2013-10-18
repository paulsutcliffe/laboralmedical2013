class Servicio < ActiveRecord::Base
  attr_accessible :descripcion, :icono, :nombre

  mount_uploader :icono, IconoUploader

  belongs_to :categoria
end
