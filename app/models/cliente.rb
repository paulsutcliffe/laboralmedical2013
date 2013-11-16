class Cliente < ActiveRecord::Base
  attr_accessible :link, :logo

  mount_uploader :logo, IconoUploader

  def self.random
    self.all.sample(4)
  end

end
