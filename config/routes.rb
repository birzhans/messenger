Rails.application.routes.draw do
  root 'home#index'
  
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :chats do
    resources :messages, only: [:create]
  end

  resource :profile, only: :show
end
