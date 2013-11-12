class ClientesController < InheritedResources::Base
  before_filter :authenticate_admin!
   
  def create
    create! { root_path }
  end

  def update
    update! { root_path }
  end

  def destroy
    destroy! { root_path }
  end
end
