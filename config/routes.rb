Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/all_products", controller: "products", action: "all_products
  "
  get "/paper_towels", controller: "products", action: "paper_towels"

  get "/clorox_bleach", controller: "products", action: "clorox_bleach"

  get "/dyson_v10_vacuum", controller: "products", action: "dyson_vacuum"

  get "/dawn_soap", controller: "products", action: "dawn_soap"

  get "tide_pods", controller: "products", action: "tide_pods"
end
