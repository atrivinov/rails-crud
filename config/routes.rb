Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "restaurants", to: "restaurants#index"
  get "restaurants/new", to: "restaurants#new"# , as: :new_restaurant # Se debe colocar antes de id
  post "restaurants", to: "restaurants#create"
  get "restaurants/:id", to: "restaurants#show", as: :restaurant
  get "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  patch "restaurants/:id", to: "restaurants#update"
  delete "restaurants/:id", to: "restaurants#destroy"
end
