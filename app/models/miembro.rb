class Miembro < ActiveRecord::Base
  attr_accessible :descripcion, :nombre, :puesto, :foto

extend FriendlyId
  friendly_id :nombre, use: :slugged

  mount_uploader :foto, FotoUploader
end
