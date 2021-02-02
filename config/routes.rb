Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # delete "pets/:id", to: "pets#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pets do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [] do
    member do
      get :accept
    end
  end
  resources :dashboard, only: [:index]
end
