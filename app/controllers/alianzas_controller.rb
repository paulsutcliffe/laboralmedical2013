class AlianzasController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:index]
  def create
    create! { alianzas_path }
  end

  def update
    update! { alianzas_path }
  end
end
