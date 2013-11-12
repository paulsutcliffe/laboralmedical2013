class Alianza < ActiveRecord::Base
  attr_accessible :nombre, :logo

  mount_uploader :logo, LogoUploader
end
