Rails.application.routes.draw do

  # Product Routes
  get "/products/:id" => "products#show"
  get "/products" => "products#index"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  # Supplier Routes
  get "/suppliers/:id" => "suppliers#show"
  get "/suppliers" => "suppliers#index"
  post "/suppliers" => "suppliers#create"
  patch "/suppliers/:id" => "suppliers#update"
  delete "/suppliers/:id" => "suppliers#destroy"

  # User Routes
  post "/users" => "users#create"

  # Session Routes
  post "/sessions" => "sessions#create"

  # Order Routes
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"
  get "/orders" => "orders#index"
end

#supplier routes
