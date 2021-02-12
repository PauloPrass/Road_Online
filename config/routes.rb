Rails.application.routes.draw do
  get '/', to: 'bus_lines#index', as: 'home' 
  resources :itineraries
  resources :bus_lines
  get '/bus_lines/:filter', to: 'bus_lines#filter_lines', as: 'filter_lines'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
