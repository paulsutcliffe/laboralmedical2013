Laboralmedical2013::Application.routes.draw do

  devise_for :admins

  match '/servicios' => 'categorias#servicios', via: :get

  match '/consultorias' => 'categorias#consultorias', via: :get

  resources :noticias

  resources :categorias

  resources :contactos

  resources :alianzas

  resources :servicios

  resources :miembros

  resources :clientes

  resources :banners

  root to: 'inicio#index'

end
