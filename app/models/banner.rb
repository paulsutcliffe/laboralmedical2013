class Banner < ActiveRecord::Base
  attr_accessible :encabezado, :imagen, :link

  mount_uploader :imagen, SlideUploader
end
