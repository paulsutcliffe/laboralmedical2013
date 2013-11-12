Laboralmedical2013::Application.routes.draw do

  devise_for :admins, :path => "cms", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }

  match '/servicios' => 'categorias#servicios', via: :get

  match '/consultorias' => 'categorias#consultorias', via: :get

  scope '/blog' do
    resources :noticias
  end

  resources :categorias do
    resources :servicios
  end

  resources :contactos

  resources :alianzas

  resources :servicios

  scope '/staff' do
    resources :miembros
  end

  resources :clientes

  resources :banners

  root to: 'inicio#index'

end
