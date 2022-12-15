Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'home_page#index'

  post '/car_model/load_data', to: 'car_model#load_data'
end
