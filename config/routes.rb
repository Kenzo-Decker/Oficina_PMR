Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'static#index'
=======
  get 'static/index'
>>>>>>> 335f6d738551126fb3477fad00910c6abff3fc9b
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
