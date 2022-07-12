Rails.application.routes.draw do
  #new
  get 'products/new'

  #create
  post 'products', to: 'products#create'

  #index
  get 'products', to: 'products#index'

  #show
  get 'products/:id', to: 'products#show', as: :product
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "welcome#home"
  get "/home" => "welcome#home"
  get "/about" => "welcome#about"
  get "/contact_us" => "welcome#contact_us"
  get "/thank_you" => "welcome#thank_you"
  get "/new" => "bills#new"
  get "/bills" => "bills#result", as: :bill

end

