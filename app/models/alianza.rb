class Alianza < ActiveRecord::Base
  attr_accessible :nombre, :logo, :posicion

  default_scope order('posicion ASC')

  mount_uploader :logo, LogoUploader
end
