Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "flights#index"
  # resources :flight, only: [:new, :create, :index, :show]
  get "/flights" => "flights#index"
  resources :bookings, only: [:new, :create, :index, :show]
end
