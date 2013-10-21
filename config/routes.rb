Laboralmedical2013::Application.routes.draw do

  devise_for :admins

  match '/servicios' => 'categorias#servicios', via: :get

  match '/consultorias' => 'categorias#consultorias', via: :get
  
  scope '/blog' do
    resources :noticias
  end

  resources :categorias

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
