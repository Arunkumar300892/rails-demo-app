Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  resources :users, only: [:show] do
    resources :galleries, only: [:create]
  end

  root to: "homes#index"
end
