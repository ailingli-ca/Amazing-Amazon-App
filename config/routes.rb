Rails.application.routes.draw do
  # #new
  # get 'products/new'

  # #create
  # post 'products', to: 'products#create'

  # #index
  # get 'products', to: 'products#index'

  # #show
  # get 'products/:id', to: 'products#show', as: :product

  # #destroy
  # delete 'products/:id', to: 'products#destroy', as: :delete_product

  # #edit
  # get 'products/:id/edit', to: 'products#edit', as: :edit_product

  # #upcate
  # patch 'products/:id', to: 'products#update'
  
  resources :products do
    resources :reviews, only: [:create, :destroy]
  end

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

