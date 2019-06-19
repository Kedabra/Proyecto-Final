Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks"}
  get 'pages/inicio'
  get 'pages/tienda'
  get 'pages/sustancias'
  get 'pages/informacion'
  get 'orders/shopping'
  get 'information/marquis'
  get 'information/ehrlich'
  get 'information/liebermann'
  get 'pages/contacto'
  get 'pages/testeado'
  get 'pages/compras'
  get 'pages/tiendas'
  get 'users/profile'
  get 'pages/producto/:id', to: 'pages#producto', as: 'pages_producto'
  resources :products do
    resources :orders, only: :create
  end
  root 'pages#inicio'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
