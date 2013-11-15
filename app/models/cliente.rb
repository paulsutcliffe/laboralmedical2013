class Cliente < ActiveRecord::Base
  attr_accessible :link, :logo

  mount_uploader :logo, IconoUploader

  def self.random
    self.limit(4).offset(rand(self.count))
  end

end
