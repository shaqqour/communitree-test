Rails.application.routes.draw do
  resources :locations
  resources :services
  resources :categories do
    resources :services, only: [:new, :index]
  end
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "home#home"
  get "/users/sign_out" => "devise/sessions#destroy"
  get "/users/best_user" => "home#best", as: "best_user"
  get "/users/:id" => "home#index", as: "user"

end
