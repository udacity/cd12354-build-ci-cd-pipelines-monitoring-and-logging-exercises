Rails.application.routes.draw do
  get "/comments", to: "comments#index"
  get "/posts", to: "posts#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end