Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:new, :show, :index, :create] do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:show]
end
