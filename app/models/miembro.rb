class Miembro < ActiveRecord::Base
  attr_accessible :descripcion, :nombre, :puesto, :foto

  mount_uploader :foto, FotoUploader
end
