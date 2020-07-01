Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'matches#index'

  resources :matches, only: [:show] do
    resources :goals, only: [:index, :create]
  end
end
