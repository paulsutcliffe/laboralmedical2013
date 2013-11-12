class MiembrosController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:index, :show]

   def create
    create! { miembros_path }
  end

  def update
    update! { miembros_path }
  end

  def destroy
    destroy! { miembros_path }
  end

end
