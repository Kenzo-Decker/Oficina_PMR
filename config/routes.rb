Rails.application.routes.draw do
  resources :reservas_certos
  resources :reservas
  resources :machines
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :formulario_certos
  root to: 'static#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
