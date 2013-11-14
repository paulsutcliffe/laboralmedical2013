class NoticiasController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:index, :show]

  def show
    @noticia = Noticia.find(params[:id])
    @recientes = Noticia.order('created_at ASC').limit(4)
  end
end
