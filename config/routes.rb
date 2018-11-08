Rails.application.routes.draw do
  root 'home#index'
  get 'movies', to: 'movies#search', as: 'movie'
  post '/', to: 'movies#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
