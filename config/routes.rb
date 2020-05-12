Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
  
  resources :tweets
  get("/", to: "tweets#index", as: :root)
end
