Rails.application.routes.draw do
  # get 'flats/index'
  # get 'flats/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/flats', to: 'flats#index'
  root to: 'flats#index'

  get '/flats/:id', to: 'flats#show', as: :flat
end
