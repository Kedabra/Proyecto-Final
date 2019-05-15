Rails.application.routes.draw do
  get 'pages/inicio'
  get 'pages/tienda'
  get 'pages/sustancias'
  get 'pages/informacion'
  get 'pages/contacto'
  get 'pages/testeado'
  get 'pages/compras'
  get 'pages/producto'
  resources :products do
    resources :orders, only: :create
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
