Rails.application.routes.draw do
  resources :reservations
  resources :movies
  resources :seances
  resources :cinema_halls
end
