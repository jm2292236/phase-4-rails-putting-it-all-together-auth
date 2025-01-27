Rails.application.routes.draw do

    resources :recipes, only: [:index, :create]

    # users controller
    get "/me", to: "users#show"
    post "/signup", to: "users#create"

    # sessions controller
    post "/login", to: "sessions#create"
    delete "/logout", to: "sessions#destroy"

    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
