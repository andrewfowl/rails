Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  get "/about-us", to:"about#index", as: :about
  get "about", to: redirect('/about-us')
  root to: "main#index"
end
