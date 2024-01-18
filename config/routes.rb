Rails.application.routes.draw do
  get 'posting/index'
  get '/posting', to: 'posting#index'
  get '/index',to: 'home#index'
  get '/artikel',to: 'home#artikel'
  get '/about', to: 'home#about'
  get '/', to: 'home#index'
  get '/posting/detail/:id', to: 'posting#detail'
  get '/posting/input', to: 'posting#input'
  post '/posting/create', to: 'posting#create'
  get '/posting/edit/:id', to: 'posting#edit'
  post '/posting/update/:id', to: 'posting#update'
  get '/posting/delete/:id', to: 'posting#delete'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
   root "home#index"
end
